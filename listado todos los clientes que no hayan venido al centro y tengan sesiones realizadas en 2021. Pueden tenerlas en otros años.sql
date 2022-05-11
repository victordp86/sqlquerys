SELECT DISTINCT cl.id, cl.nombre, cl.apellido1, cl.apellido2, cl.telefonoMovil 
FROM Cliente cl 
JOIN Cita ci ON cl.id =ci.cliente_id
JOIN Instalacion i ON i.id = cl.instalacion_id 
WHERE cl.id NOT IN( /* Todos los clientes que tienen citas realizadas o pendientes en 2021 */
	SELECT cl.id 
	FROM Cliente cl 
	JOIN Cita ci ON cl.id = ci.cliente_id 
	WHERE  DATE(ci.fechaAsignacion) > "2021-01-01"
	AND ci.estado_id IN (1,2)
)
