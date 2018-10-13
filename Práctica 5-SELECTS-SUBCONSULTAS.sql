USE empleado

Select Salario, COUNT(Salario) as 'salarios'
from empleado_tbl
group by Salario
having Salario>38000

select PrimerNombre
from empleado_tbl
where Numero = 6276648992

select PrimerNombre, Salario
From empleado_tbl
where Numero>8000000000

with Salarios as (select Salario, count(Salario) as SS
from empleado_tbl
group by Salario)
Select* from Salarios
where Salarios.SS>1




create view view1 
as select Salario, COUNT(Salario) as 'salarios'
from empleado_tbl
group by Salario
having Salario>38000

create view view2
as select PrimerNombre
from empleado_tbl
where Numero = 6276648992

create view view3
as select PrimerNombre, Salario
From empleado_tbl
where Numero>8000000000

create view view4
as with Salarios as (select Salario, count(Salario) as SS
from empleado_tbl
group by Salario)
Select* from Salarios
where Salarios.SS>1

create view view5
as select PrimerNombre, Apellido
from empleado_tbl

Declare @query nvarchar(50)
declare @nomcol nvarchar(50) = 'Nombre'
set @query = 'select PrimerNombre as '+ @nomcol + ' from empleado_tbl'
print @query