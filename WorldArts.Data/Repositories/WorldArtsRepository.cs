namespace WorldArts.Data.Repositories
{
    using System.Data;
    using System.Collections.Generic;

    using Microsoft.Data.SqlClient;
    using Microsoft.Extensions.Configuration;

    using Dapper;
    using WorldArts.Data.Models;

    public class WorldArtsRepository : IWorldArtsRepository
    {
        private readonly IConfiguration _config;
        private readonly string _connectionString;

        public WorldArtsRepository(IConfiguration config)
        {
            _config = config;
            _connectionString = _config.GetConnectionString("default");
        }

        public async Task<WorldArts> AddArt(WorldArts art)
        {
            using IDbConnection connection = new SqlConnection(_connectionString);
            var parameters = new DynamicParameters();
           
            parameters.Add("Id", 0, DbType.Int32, ParameterDirection.Output);
            parameters.Add("Title", art.Title);
            parameters.Add("Author", art.Author);
            parameters.Add("Country", art.Country);
            parameters.Add("Category", art.Category);
            parameters.Add("ImageLink", art.ImageLink);  
            parameters.Add("Link", art.Link);
            parameters.Add("Price", art.Price); 
            parameters.Add("Year", art.Year);
            await connection.ExecuteAsync(
                "spAddArt", 
                param: parameters, 
                commandType: CommandType.StoredProcedure);

            art.Id = parameters.Get<int>("Id");
            return art;
        }

        public async Task DeleteArt(int id)
        {
            using IDbConnection connection = new SqlConnection(_connectionString);
            var arts = await connection.ExecuteAsync(
                "spDeleteArt", 
                new { id }, 
                commandType: CommandType.StoredProcedure);
        }

        public async Task<WorldArts> GetArt(int id)
        {
            using IDbConnection connection = new SqlConnection(_connectionString);
            var arts = await connection.QueryAsync<WorldArts>(
                "spGetArtById",
                new { id },
                commandType: CommandType.StoredProcedure);

            return arts.FirstOrDefault();
        }

        public async Task<IEnumerable<string>> GetArtCategories()
        {
            using IDbConnection connection = new SqlConnection(_connectionString);
            var categories = await connection.QueryAsync<string>(
                "spGetCategories", 
                commandType: CommandType.StoredProcedure);
            return categories;
        }

        public async Task<WorldArtResult> GetArtsAsync(
            int page,
            int limit,
            string? searchTerm,
            string? categories,
            string? sortColumn,
            string? sortDirection)
        {
            using IDbConnection connection = new SqlConnection(_connectionString);
            using var multi = await connection.QueryMultipleAsync(
                "spGetArts",
                new { page, limit, categories, searchTerm, sortColumn, sortDirection },
                commandType: CommandType.StoredProcedure);

            var worldArt = await multi.ReadAsync<WorldArts>();
            var paginationData = await multi.ReadFirstAsync<PaginationData>();

            return new WorldArtResult { WorldArts = worldArt, PaginationData = paginationData };
        }

        public async Task UpdateArt(WorldArts art)
        {
            using IDbConnection connection = new SqlConnection(_connectionString);
            await connection.ExecuteAsync(
                "spUpdateArt",
                art, 
                commandType: CommandType.StoredProcedure);
        }
    }
}
