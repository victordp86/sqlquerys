SELECT  ve.cliente_id AS "ID CLIENTE", date(ve.fecha) AS "FECHA COMPRA", i.descripcion  AS "NOMBRE CENTRO", i.cif AS "COD. IDENTIFICACICIÓN EMPERSA", se.descripcion AS "SERVICIO", b.nombre AS "BONO", ve.total AS "IMPORTE ABONADO", fpv.descripcion AS "MÉTODOD DE PAGO"
FROM LineaVenta lv 
JOIN Venta ve ON ve.id = lv.venta_id 
LEFT JOIN Servicio se ON se.id = lv.servicio_id 
LEFT JOIN Bono b  ON b.id = lv.bono_id
JOIN FormaPagoVenta fpv ON fpv.id = ve.formaPago_id 
JOIN Instalacion i ON i.id = ve.instalacion_id
WHERE DATE(ve.fecha) = "2020-06-24"
AND (ve.formaPago_id = 4)
