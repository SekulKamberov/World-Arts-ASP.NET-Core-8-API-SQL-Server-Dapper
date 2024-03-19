namespace WorldArts.Data.Repositories
{
    using WorldArts.Data.Models;

    public interface IWorldArtsRepository
    {
        Task<WorldArts> AddArt(WorldArts art); 
        Task DeleteArt(int id);
        Task<WorldArts> GetArt(int id);
        Task<WorldArtResult> GetArtsAsync(int page, int limit, string? searchTerm, string? categories, string? sortColumn, string? sortDirection);
        Task UpdateArt(WorldArts art);
        Task<IEnumerable<string>> GetArtCategories();

    }
}
