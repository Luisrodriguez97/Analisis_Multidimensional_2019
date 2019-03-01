insert 
into [Examen]..DimParqueo

select p.IDParqueo, d.Descripcion, pr.Descripcion ,ca.Descripcion
from [ExamenAnalisis]..Parqueo p 
inner join Distrito d on p.ConsecutivoDistrito = d.ConsecutivoDistrito 
inner join Provincia pr on d.IDProvincia=pr.IDProvincia
inner join Canton ca on ca.IDCanton = d.IDCanton and ca.IDProvincia = d.IDProvincia
order by 1 asc;