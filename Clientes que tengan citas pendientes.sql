/* Clientes que tengan citas realizadas */
	SELECT cl.id 
	FROM Cliente cl 
	JOIN Cita ci ON cl.id = ci.cliente_id 
	AND ci.estado_id IN (1)