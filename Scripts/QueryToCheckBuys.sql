/****** Script for SelectTopNRows command from SSMS  ******/
declare @fecha datetime
set @fecha = '2021-08-16 00:00:00.000'

SELECT *
  FROM [AlmacenMegaAves].[dbo].[FactVentas]
  where IdFecha = @fecha

  select * from FactDetalleLote
  where IdFecha = @fecha