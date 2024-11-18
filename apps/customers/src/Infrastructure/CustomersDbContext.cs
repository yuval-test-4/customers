using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace Customers.Infrastructure;

public class CustomersDbContext : IdentityDbContext<IdentityUser>
{
    public CustomersDbContext(DbContextOptions<CustomersDbContext> options)
        : base(options) { }
}
