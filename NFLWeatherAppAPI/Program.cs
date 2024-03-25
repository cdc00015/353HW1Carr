using Microsoft.EntityFrameworkCore;
using NFLWeatherAppAPI.Data;
using NFLWeatherAppAPI.Repositories;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddScoped<IPlayerService, PlayerService>();
builder.Services.AddScoped<ITeamService, TeamService>();

// ^^new api builder services would go here^^
builder.Services.AddDbContext<DbContextClass>(options =>
{
    options.UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection"));
});
builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

//builder.Services.AddRazorPages();

builder.Services.AddCors(option =>
{
    option.AddPolicy("AllowMyRazorPagesApp",
        builder =>
        {
            builder.WithOrigins("https://localhost:7146")
            .AllowAnyHeader()
            .AllowAnyMethod();
        }
    );
});

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();

app.UseCors("AllowMyRazorPagesApp");

app.UseAuthorization();

app.MapControllers();

app.Run();
