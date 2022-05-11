SELECT id, clienteEmbajador_id, COUNT(clienteEmbajador_id)
FROM Cliente cl
GROUP BY id  
HAVING COUNT(clienteEmbajador_id) >= 1  
ORDER BY `COUNT(clienteEmbajador_id)`  DESC