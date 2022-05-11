SELECT cl.id, cl.nombre, cl.apellido1, cl.apellido2, cl.telefonoMovil 
FROM Cliente cl 
JOIN Cita ci ON cl.id =ci.cliente
JOIN Instalacion i ON i.id = cl.instalacion_id 
WHERE cl.id IN(
	SELECT cl.id 
	FROM Cliente cl 
	JOIN Cita ci ON cl.id = ci.cliente_id 
	WHERE  DATE(ci.fechaAsignacion) > "2021-01-01"
)
AND DATE(ci.fechaAsignacion) > "2021-01-01"
