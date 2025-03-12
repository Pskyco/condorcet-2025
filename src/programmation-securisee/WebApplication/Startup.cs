using System;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Hosting;
using Microsoft.EntityFrameworkCore;
using WebApplication.Data;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using WebApplication.Enums;
using WebApplication.Middlewares;

namespace WebApplication
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddDbContext<ApplicationDbContext>(options =>
                options.UseSqlite(
                    Configuration.GetConnectionString("DefaultConnection")));
            services.AddDatabaseDeveloperPageExceptionFilter();

            services.AddDefaultIdentity<IdentityUser>(options => options.SignIn.RequireConfirmedAccount = true)
                .AddRoles<IdentityRole>()
                .AddEntityFrameworkStores<ApplicationDbContext>();

            services.AddAuthorization(options =>
            {
                // need one of theses roles
                options.AddPolicy("Salary.R",
                    policy => policy.RequireRole(RolesEnum.Finance.ToString(), RolesEnum.HR.ToString(),
                        RolesEnum.Management.ToString()));
                // need one of theses roles
                options.AddPolicy("Salary.W",
                    policy => policy.RequireRole(RolesEnum.HR.ToString(), RolesEnum.Management.ToString()));
            });

            services.AddControllersWithViews().AddRazorRuntimeCompilation();
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env, IServiceProvider serviceProvider)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
                app.UseMigrationsEndPoint();
            }
            else
            {
                app.UseExceptionHandler("/Home/Error");
                // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
                app.UseHsts();
            }

            // Content Security Policity (CSP) - documentation: https://content-security-policy.com/
            // 2 methods : you write all your directives by hand
            // app.UseMiddleware<SecurityHeadersMiddleware>();
            // or you use NWebsec.AspNetCore NuGet package that will make it more readable
            // app.UseCsp(options =>
            // {
            //     options.ScriptSources(s => s.Self());
            //     options.StyleSources(s => s.Self());
            //     options.ImageSources(s => s.Self());
            // });

            app.UseHttpsRedirection();
            app.UseStaticFiles();

            app.UseRouting();

            app.UseAuthentication();
            app.UseAuthorization();

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllerRoute(
                    name: "default",
                    pattern: "{controller=Home}/{action=Index}/{id?}");
                endpoints.MapRazorPages();
            });

            SeedRoles(serviceProvider).Wait();
            SeedUsers(serviceProvider).Wait();
            SeedUserRoles(serviceProvider).Wait();
        }

        private async Task SeedUserRoles(IServiceProvider serviceProvider)
        {
            var userManager = serviceProvider.GetRequiredService<UserManager<IdentityUser>>();

            var user = await userManager.FindByEmailAsync("management@domain.be");
            if (user != null)
                userManager.AddToRoleAsync(user, RolesEnum.Management.ToString());

            user = await userManager.FindByEmailAsync("finance@domain.be");
            if (user != null)
                userManager.AddToRoleAsync(user, RolesEnum.Finance.ToString());

            user = await userManager.FindByEmailAsync("hr@domain.be");
            if (user != null)
                userManager.AddToRoleAsync(user, RolesEnum.HR.ToString());

            user = await userManager.FindByEmailAsync("hr_management@domain.be");
            if (user != null)
            {
                userManager.AddToRoleAsync(user, RolesEnum.HR.ToString());
                userManager.AddToRoleAsync(user, RolesEnum.Management.ToString());
            }
        }

        private async Task SeedUsers(IServiceProvider serviceProvider)
        {
            var userManager = serviceProvider.GetRequiredService<UserManager<IdentityUser>>();

            var user = await userManager.FindByEmailAsync("management@domain.be");
            if (user == null)
                await userManager.CreateAsync(new IdentityUser("management@domain.be")
                {
                    Email = "management@domain.be",
                    EmailConfirmed = true
                }, "Test123$$");

            user = await userManager.FindByEmailAsync("finance@domain.be");
            if (user == null)
                await userManager.CreateAsync(new IdentityUser("finance@domain.be")
                {
                    Email = "finance@domain.be",
                    EmailConfirmed = true
                }, "Test123$$");

            user = await userManager.FindByEmailAsync("hr@domain.be");
            if (user == null)
                await userManager.CreateAsync(new IdentityUser("hr@domain.be")
                {
                    Email = "hr@domain.be",
                    EmailConfirmed = true
                }, "Test123$$");

            user = await userManager.FindByEmailAsync("hr_management@domain.be");
            if (user == null)
                await userManager.CreateAsync(new IdentityUser("hr_management@domain.be")
                {
                    Email = "hr_management@domain.be",
                    EmailConfirmed = true
                }, "Test123$$");
        }

        private async Task SeedRoles(IServiceProvider serviceProvider)
        {
            var roleManager = serviceProvider.GetRequiredService<RoleManager<IdentityRole>>();

            if (!await roleManager.RoleExistsAsync(RolesEnum.Management.ToString()))
                await roleManager.CreateAsync(new IdentityRole(RolesEnum.Management.ToString()));

            if (!await roleManager.RoleExistsAsync(RolesEnum.Finance.ToString()))
                await roleManager.CreateAsync(new IdentityRole(RolesEnum.Finance.ToString()));

            if (!await roleManager.RoleExistsAsync(RolesEnum.HR.ToString()))
                await roleManager.CreateAsync(new IdentityRole(RolesEnum.HR.ToString()));
        }
    }
}