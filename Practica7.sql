create procedure [dbo].[Escue](@valor1 int)
as
begin
	declare @reporte nvarchar(50)
	set @reporte = 'Hola'
	print @reporte
	select * from dbo.Alumnos
	where Matrícula>@valor1
end

exec Escue 30
go

create procedure [dbo].[dos](@valor1 int)
as
begin
	declare @reporte nvarchar(50)
	set @reporte = 'Hola'
	print @reporte
	select * from dbo.Alumnos
	where Matrícula<@valor1
end
go

exec dos 20
go

create procedure [dbo].[tres](@valor1 int)
as
begin
	declare @reporte nvarchar(50)
	set @reporte = 'Hola'
	print @reporte
	select * from dbo.Salones
	where Número>@valor1
end
go
exec tres 2
go

create procedure [dbo].[cuatro](@valor1 time)
as
begin
	declare @reporte nvarchar(50)
	set @reporte = 'Hola'
	print @reporte
	select * from dbo.Periodo
	where Final=@valor1
end
go
exec cuatro '12:00'
go

create procedure [dbo].[cinco](@valor1 varchar(50))
as
begin
	declare @reporte nvarchar(50)
	set @reporte = 'Hola'
	print @reporte
	select * from dbo.Alumnos
	where Direcciones=@valor1
end
go

exec cinco 2
go

create function dbo.fnmul (@v1 float,@v2 float)
returns float
as
begin
	return @v1*@v2
end
go

select dbo.fnmul(5,4)