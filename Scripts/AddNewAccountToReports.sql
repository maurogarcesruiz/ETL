use MegaAves
go

declare @numeroCuenta nvarchar(50),
@nombreParametro nvarchar(100)

set @numeroCuenta = '5.1.03.02.18'
set @nombreParametro = 'CtasCostosIndirectos'

--Insertar la nueva cuenta
--insert into Parametro values (@nombreParametro, @numeroCuenta,'','',@nombreParametro,GETDATE(),getdate(),1,0)

--Consultas para verificar la cuenta fue ingresada
select * from Parametro
where Nombre = @nombreParametro
and Valor1 = @numeroCuenta

select * from StageMegaAves.dbo.DatosPlanCuentas
where codcta = @numeroCuenta

select * from StageMegaAves.dbo.DatosTemporalesCostos
where detalle = @numeroCuenta

select distinct articulo from StageMegaAves.dbo.DatosTemporalesCostosPorMes
where articulo like 'servicio%'

SELECT *
  FROM [AlmacenMegaAves].[dbo].[DimDetalle]
  where Detalle = @numeroCuenta