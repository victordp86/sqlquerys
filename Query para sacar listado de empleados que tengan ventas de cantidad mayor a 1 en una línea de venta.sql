SELECT i.descripcion as centro, CONCAT_WS(' ', u.nombre, u.apellidos) as empleado, u.username as email, COUNT(lv.id) as total, sum(lv.subtotal)
FROM Usuario u
JOIN Instalacion i ON i.id = u.instalacionDefecto_id
JOIN LineaVenta lv ON lv.usuario_id = u.id AND lv.cantidad > 1
JOIN Venta ve ON ve.id = lv.venta_id
WHERE DATE(ve.fecha) BETWEEN '2021-08-02' AND '2021-08-09'
GROUP BY u.id
ORDER BY i.sort


SELECT 
Final
SELECT u.id , i.descripcion as centro, CONCAT_WS(' ', u.nombre, u.apellidos) as empleado, u.username as email, COUNT(lv.id) as numeroDeVentasEnPromo,
       sum(lv.subtotal) as importe, (SELECT count(DISTINCT(ve.cliente_id)) FROM Cliente cl JOIN Venta ve on cl.id = ve.cliente_id where DATE(ve.fecha) BETWEEN '2021-12-20' AND '2022-01-07' AND ve.usuario_id = u.id ) as clientesAtendidos
FROM Usuario u JOIN Instalacion i ON i.id = u.instalacionDefecto_id
    JOIN LineaVenta lv ON lv.usuario_id = u.id AND lv.cantidad > 1
    JOIN Venta ve ON ve.id = lv.venta_id WHERE DATE(ve.fecha) BETWEEN '2021-12-20' AND '2022-01-07'
GROUP BY u.id ORDER BY total DESC


