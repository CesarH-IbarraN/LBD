select [Nombre(s)] as Nombre
from Alumnos
group by [Nombre(s)]

select [Apellido Paterno], Matrícula
from Alumnos

select Nombre as Locación
from Estados

select Matrícula, [Nombre(s)]
from Alumnos
where Matrícula>30 and Matrícula<50

select [Nombre(s)] as Reprobados
from Alumnos
where Matrícula<20

select Direcciones, [Nombre(s)], Matrícula, Direcciones.Colonia
from Alumnos
INNER JOIN Direcciones ON
Direcciones=[Id Direcciones]

select Direcciones, [Nombre(s)], Matrícula, Direcciones.Colonia
from Alumnos
RIGHT JOIN Direcciones ON
Direcciones=[Id Direcciones]

select Direcciones, [Nombre(s)], Matrícula, Direcciones.Colonia
from Alumnos
FULL JOIN Direcciones ON
Direcciones=[Id Direcciones]

select Direcciones, [Nombre(s)], Matrícula, Direcciones.Colonia
from Alumnos
LEFT JOIN Direcciones ON
Direcciones=[Id Direcciones]

select [Nombre(s)] as Reprobados
from Alumnos
where Matrícula<20
order by [Nombre(s)]

select Nombre
from Carrera
where [Id Carrera]=2

select Calle
from Direcciones
where Colonia = 1

select Número
from Salones
where Número>1

select Nombre
from Periodo
where Inicio='8:00'

select min(Matrícula)
from Alumnos
where [Nombre(s)]='Carlos'
group by Matrícula
having Matrícula=1

select max(Matrícula)
from Alumnos
where [Nombre(s)]='Carlos'
group by Matrícula

select avg(Matrícula)
from Alumnos
group by [Nombre(s)]

select count([Nombre(s)])
from Alumnos
where [Nombre(s)]=('Francisco')