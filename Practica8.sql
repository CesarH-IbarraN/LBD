Set ANSI_NULLS ON
GO
Set QUOTED_IDENTIFIER ON
GO

Use Escuela
go

ALTER trigger [dbo].[tr_insert]
on [dbo].[Alumnos]
instead of insert
as
begin
	select*
	from inserted
END
go

CREATE trigger [dbo].[tr_update]
on [dbo].[Carrera]
after update
as
begin
	select*
	from inserted
	select*
	from deleted
END
go

CREATE trigger [dbo].[tr_delete]
on [dbo].[Periodo]
instead of delete
as
begin
	select*
	from deleted
END
go