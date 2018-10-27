select [Nombre(s)] as Nombre
from Alumnos
group by [Nombre(s)]

select [Apellido Paterno], Matr�cula
from Alumnos

select Nombre as Locaci�n
from Estados

select Matr�cula, [Nombre(s)]
from Alumnos
where Matr�cula>30 and Matr�cula<50

select [Nombre(s)] as Reprobados
from Alumnos
where Matr�cula<20

select Direcciones, [Nombre(s)], Matr�cula, Direcciones.Colonia
from Alumnos
INNER JOIN Direcciones ON
Direcciones=[Id Direcciones]

select Direcciones, [Nombre(s)], Matr�cula, Direcciones.Colonia
from Alumnos
RIGHT JOIN Direcciones ON
Direcciones=[Id Direcciones]

select Direcciones, [Nombre(s)], Matr�cula, Direcciones.Colonia
from Alumnos
FULL JOIN Direcciones ON
Direcciones=[Id Direcciones]

select Direcciones, [Nombre(s)], Matr�cula, Direcciones.Colonia
from Alumnos
LEFT JOIN Direcciones ON
Direcciones=[Id Direcciones]

select [Nombre(s)] as Reprobados
from Alumnos
where Matr�cula<20
order by [Nombre(s)]

select Nombre
from Carrera
where [Id Carrera]=2

select Calle
from Direcciones
where Colonia = 1

select N�mero
from Salones
where N�mero>1

select Nombre
from Periodo
where Inicio='8:00'

select min(Matr�cula)
from Alumnos
where [Nombre(s)]='Carlos'
group by Matr�cula
having Matr�cula=1

select max(Matr�cula)
from Alumnos
where [Nombre(s)]='Carlos'
group by Matr�cula

select avg(Matr�cula)
from Alumnos
group by [Nombre(s)]

select count([Nombre(s)])
from Alumnos
where [Nombre(s)]=('Francisco')