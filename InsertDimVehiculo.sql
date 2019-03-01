insert 
into [Examen]..DimVehiculo

select v.IDVehiculo, tv.Descripcion, f.NombreFabricante, p.NombrePais,p.AbreviaturaPais, rc.Descripcion , c.Descripcion, v.Ano
from ExamenAnalisis..Vehiculo v
inner join TipoVehiculo tv on tv.IDTipoVehiculo = v.IDTipoVehiculo
inner join Fabricante f on f.IDFabricante = v.IDFabricante
inner join Pais p  on p.IDPais = f.IDPais
inner join RegionContinente rc on rc.IDRegionContinente = p.IDRegionContinente
inner join Continente c on c.IDContinente = rc.IDContinente
order by 1 asc;