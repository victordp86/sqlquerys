SELECT c.nombre AS "NOMBRE", c.apellido1 AS "PRIMER APELLIDO", c.apellido2 AS "SEGUNDO APELLIDO", i.descripcion AS "CENTRO", s.descripcion AS "GÉNERO", c.telefonoMovil AS "T. MOVIL", c.telefonoFijo AS "T. FIJO", c.email AS "EMAIL", c.direccion AS "DIRECCIÓN", c2.name AS "PROVINCIA", c.ciudad AS "CIUDAD", c.codigoPostal "CÓDIGO POSTAL"
FROM Cliente c 
JOIN Instalacion i on c.instalacion_id = i.id  
JOIN City c2 on c2.id = c.city_id 
JOIN Sexo s ON s.id = c.sexo_id 
WHERE c.codigoPostal IN ("08028" , "08014" , "08903" , "08902" , "08014" , "08905" , "08902" , "08904" , "08028" , "08029" , "08017" , "08028" , "08034" , "08014" , "08029" , "08021" , "08006" , "08012" , "08023" , "08006" , "08024" , "08023" , "08032" , "08041" , "08037" , "08035" , "08031" , "08196")
/* Clientes sin citas pendientes
	SELECT DISTINCT cl.id 
	FROM Cliente cl 
	JOIN Cita ci ON cl.id = ci.cliente_id 
	AND ci.estado_id NOT IN (2
*/