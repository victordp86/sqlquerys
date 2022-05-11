SELECT DISTINCT cl.id, cl.nombre, cl.apellido1, cl.apellido2, cl.telefonoMovil 
FROM Cliente cl 
JOIN Cita ci ON cl.id =ci.cliente_id
JOIN Instalacion i ON i.id = cl.instalacion_id 
WHERE cl.id  IN(  /*Todos los clientes que tienen citas realizadas en el pasado */
	SELECT cl.id 
	FROM Cliente cl 
	JOIN Cita ci ON cl.id = ci.cliente_id 
	WHERE  DATE(ci.fechaAsignacion) > "2021-08-01" AND DATE(ci.fechaAsignacion) < "2021-11-24"
	AND ci.estado_id IN (1)
)
AND cl.id NOT IN( /*Todos los clientes que tienen citas pendientes en el futuro */
	SELECT cl.id 
	FROM Cliente cl 
	JOIN Cita ci ON cl.id = ci.cliente_id 
	WHERE  DATE(ci.fechaAsignacion) > "2021-11-24" AND DATE(ci.fechaAsignacion) < "2024-12-01"
	AND ci.estado_id IN (2)
)
