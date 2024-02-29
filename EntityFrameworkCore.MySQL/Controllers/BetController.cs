using EntityFrameworkCore.MySQL.Data;
using EntityFrameworkCore.MySQL.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace EntityFrameworkCore.MySQL.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    [Authorize]
    public class BetController : ControllerBase
    {
        private readonly AppDbContext _appDbContext;
        public BetController(AppDbContext appDbContext)
        {
            _appDbContext = appDbContext;
        }

        [HttpPost("place"), Authorize]
        public async Task<IActionResult> Place(Bet bet)
        {
            _appDbContext.Bets.Add(bet);
            await _appDbContext.SaveChangesAsync();

            return Ok(bet);
        }

    }
}
