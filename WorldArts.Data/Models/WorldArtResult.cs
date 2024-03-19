namespace WorldArts.Data.Models
{
    public class WorldArtResult
    {
        public IEnumerable<WorldArts> WorldArts { get; set; }
        public PaginationData PaginationData { get; set; }
    }
    public record PaginationData(int TotalRecords, int TotalPages);
}
 