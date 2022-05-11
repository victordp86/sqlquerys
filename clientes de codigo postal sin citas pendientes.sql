
/* Cliententes de codigo postal sin citas pendientes */
SELECT c.nombre AS "NOMBRE", c.apellido1 AS "PRIMER APELLIDO", c.apellido2 AS "SEGUNDO APELLIDO", i.descripcion AS "CENTRO", s.descripcion AS "GÉNERO", c.telefonoMovil AS "T. MOVIL", c.telefonoFijo AS "T. FIJO", c.email AS "EMAIL", c.direccion AS "DIRECCIÓN", c2.name AS "PROVINCIA", c.ciudad AS "CIUDAD", c.codigoPostal "CÓDIGO POSTAL"
FROM Cliente c 
JOIN Instalacion i on c.instalacion_id = i.id  
JOIN City c2 on c2.id = c.city_id 
JOIN Sexo s ON s.id = c.sexo_id 
WHERE c.codigoPostal IN ("08214", "08291", "08193"  )
AND c.id NOT IN (
        SELECT DISTINCT cl.id 
		FROM Cliente cl 
		JOIN Cita ci ON cl.id = ci.cliente_id 
		AND ci.estado_id  IN (2)
	)




/* Cliententes de codigo postal sin citas pendientes */
SELECT c.nombre AS "NOMBRE", c.apellido1 AS "PRIMER APELLIDO", c.apellido2 AS "SEGUNDO APELLIDO", i.descripcion AS "CENTRO", s.descripcion AS "GÉNERO", c.telefonoMovil AS "T. MOVIL", c.telefonoFijo AS "T. FIJO", c.email AS "EMAIL", c.direccion AS "DIRECCIÓN", c2.name AS "PROVINCIA", c.ciudad AS "CIUDAD", c.codigoPostal "CÓDIGO POSTAL"
FROM Cliente c 
JOIN Instalacion i on c.instalacion_id = i.id  
JOIN City c2 on c2.id = c.city_id 
JOIN Sexo s ON s.id = c.sexo_id 
WHERE c.codigoPostal IN ( "08800", "08880", "08812", "43700", "08720", "43717" )
AND c.id NOT IN (
        SELECT DISTINCT cl.id 
		FROM Cliente cl 
		JOIN Cita ci ON cl.id = ci.cliente_id 
		AND ci.estado_id  IN (2)
	)
