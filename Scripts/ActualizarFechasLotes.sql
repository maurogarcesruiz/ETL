use MegaAves
go

declare @fechaInicio datetime,
@fechaFinalizacion datetime,
@idGalpon int,
@idLote int, 
@anio int

--Valores para actualizar y buscar registros
set @fechaInicio = '2021-05-28 00:00:00.000'
set @fechaFinalizacion = '2021-02-26 00:00:00.000'
set @idLote = 54770 --Valor ejecutanto consulta 2)
set @idGalpon = 5032 --Valor ejecutanto consulta 1)
set @anio = 2021


--Actualizar fechas del lote
--update Lote
--set FechaCreacion = @fechaInicio,
--FechaFinalizacion = @fechaFinalizacion
--where IdGalpon = @idGalpon
--and IdLote = @idLote

--Ejecutar antes de actualizar para estar seguro que solo se van a afectar los registros que son
select * from Lote
where IdGalpon = @idGalpon
and IdLote = @idLote

--Consulta registros por lotes
--1)
select * from Galpon

--2)
select * from Lote
where anio = @anio
and IdGalpon = @idGalpon

select * from DetalleLote
where IdLote = @idLote
order by Fecha

