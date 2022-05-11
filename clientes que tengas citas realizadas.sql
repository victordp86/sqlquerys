/* Clientes que tengan citas realizadas */
	SELECT cl.id AS "Cliente ID", i.descripcion AS "Centro", cl.nombre AS "Nombre", cl.apellido1 AS "Primer Apellido", cl.apellido2 AS "Segundo Apellido", cl.telefonoMovil AS "Móvil", cl.telefonoFijo AS "Fijo", cl.email AS "email"
	FROM Cliente cl 
	JOIN Cita ci ON cl.id = ci.cliente_id 
	JOIN Instalacion i ON cl.instalacion_id = i.id
	AND ci.estado_id IN (1)
	WHERE DATE(ci.fechaAsignacion) > "2021-01-01"