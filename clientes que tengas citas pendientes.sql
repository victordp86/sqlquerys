/* Clientes que tengan citas pendientes */
	SELECT cl.id 
	FROM Cliente cl 
	JOIN Cita ci ON cl.id = ci.cliente_id 
	AND ci.estado_id IN (4)
	WHERE ci.fechaAsignacion >