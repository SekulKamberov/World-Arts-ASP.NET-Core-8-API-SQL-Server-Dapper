namespace WorldArts.API.Controllers
{
    using Microsoft.AspNetCore.Mvc;

    using WorldArts.Data.Models;
    using WorldArts.Data.Repositories;
     
    [Route("api/arts")]
    [ApiController]
    public class WorldArtsController : ControllerBase
    {
        private readonly IWorldArtsRepository _artsRepo;
        private readonly ILogger<WorldArtsController> _logger;

        public WorldArtsController(IWorldArtsRepository artsRepo, ILogger<WorldArtsController> logger)
        {
            _artsRepo = artsRepo;
            _logger = logger;
        }

        [HttpPost]
        public async Task<IActionResult> AddArt(WorldArts art)
        {
            try
            {
                await _artsRepo.AddArt(art);
                _logger.LogInformation("Added Successfully");

                return CreatedAtAction(nameof(AddArt), art);
            }
            catch (Exception ex)
            {
                _logger.LogError(ex.Message);
                return StatusCode(StatusCodes.Status500InternalServerError, new StatusModel
                {
                    StatusCode = 500,
                    Message = "Something Wrong"
                });
            }
        }

        [HttpPut]
        public async Task<IActionResult> UpdateArt(WorldArts art)
        {
            try
            {
                var artToUpdate = await _artsRepo.GetArt(art.Id);
                if (artToUpdate == null)
                {
                    return NotFound(new StatusModel
                    {
                        StatusCode = 404,
                        Message = $"The Exponat with id {art.Id} does not exists."
                    });
                } 
                await _artsRepo.UpdateArt(art);

                return Ok(new StatusModel
                {
                    StatusCode = 200,
                    Message = "Updated successfully"
                });
            }
            catch (Exception ex)
            { 
                _logger.LogError(ex.Message);
                return StatusCode(StatusCodes.Status500InternalServerError, new StatusModel
                {
                    StatusCode = 500,
                    Message = "Something Wrong"
                });
            }
        }

        [HttpGet("{id}")]
        public async Task<IActionResult> GetArt(int id)
        {
            try
            {
                var exponat = await _artsRepo.GetArt(id);
                if (exponat == null)
                {
                    return NotFound(new StatusModel
                    {
                        StatusCode = 404,
                        Message = $"The Exponat with id {id} does not exists."
                    });
                }
                return Ok(exponat);
            }
            catch (Exception ex)
            {

                _logger.LogError(ex.Message);
                return StatusCode(StatusCodes.Status500InternalServerError, new StatusModel
                {
                    StatusCode = 500,
                    Message = "Something Wrong"
                });
            }
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteArt(int id)
        {
            try
            {
                var exponat = await _artsRepo.GetArt(id);
                if (exponat == null)
                {
                    return NotFound(new StatusModel
                    {
                        StatusCode = 404,
                        Message = $"The Exponat with id {id} does not exists."
                    });
                }
                await _artsRepo.DeleteArt(id);
                return Ok(new StatusModel
                {
                    StatusCode = 200,
                    Message = "Deleted successfully"
                });
            }
            catch (Exception ex)
            {

                _logger.LogError(ex.Message);
                return StatusCode(StatusCodes.Status500InternalServerError, new StatusModel
                {
                    StatusCode = 500,
                    Message = "Something Wrong"
                });
            }
        }
        //[HttpGet]
        [HttpGet("{searchTerm?}/{categories?}/{sortColumn?}/{sortDirection?}/{page?}/{limit?}")]
        public async Task<IActionResult> GetArts(
            [FromQuery] string? searchTerm,
            [FromQuery] string? categories,
            [FromQuery] string? sortColumn,
            [FromQuery] string? sortDirection,
            [FromQuery] int page = 1,
            [FromQuery] int limit = 10
            )
        {
            try
            {
                var exponats = await _artsRepo.GetArtsAsync(
                    page, 
                    limit, 
                    searchTerm, 
                    categories, 
                    sortColumn, 
                    sortDirection);

                return Ok(exponats);
            }
            catch (Exception ex)
            {
                _logger.LogError(ex.Message);
                return StatusCode(StatusCodes.Status500InternalServerError, new StatusModel
                {
                    StatusCode = 500,
                    Message = "Something Wrong"
                });
            }
        }

        [HttpGet("categories")]
        public async Task<IActionResult> GetArtCategories()
        {
            try
            {
                var exponats = await _artsRepo.GetArtCategories();
                return Ok(exponats);
            }
            catch (Exception ex)
            {
                _logger.LogError(ex.Message);
                return StatusCode(StatusCodes.Status500InternalServerError, new StatusModel
                {
                    StatusCode = 500,
                    Message = "Something Wrong"
                });
            }
        } 
    }
}
