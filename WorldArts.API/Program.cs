    using WorldArts.Data.Repositories;

    var builder = WebApplication.CreateBuilder(args);
 
    builder.Services.AddControllers(); 
    builder.Services.AddEndpointsApiExplorer();
    builder.Services.AddSwaggerGen();
    builder.Services.AddTransient<IWorldArtsRepository, WorldArtsRepository>();
    builder.Services.AddCors(options =>
    {
        options.AddDefaultPolicy(
            policy =>
            {
                policy.WithOrigins("*").AllowAnyMethod().AllowAnyHeader(); ;
            });
    });

    var app = builder.Build();
 
    if (app.Environment.IsDevelopment())
    {
        app.UseSwagger();
        app.UseSwaggerUI();
    }

    app.UseHttpsRedirection();
    app.UseCors();

    app.UseAuthorization(); 
    app.MapControllers();

    app.Run();
