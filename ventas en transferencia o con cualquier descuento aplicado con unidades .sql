SELECT  ve.cliente_id AS "ID CLIENTE", date(ve.fecha) AS "FECHA COMPRA", i.descripcion  AS "NOMBRE CENTRO", i.cif AS "COD. IDENTIFICACICIÓN EMPERSA", se.descripcion AS "SERVICIO", b.nombre AS "BONO", lv.subtotal AS "IMPORTE ABONADO", lv.cantidad AS "UNIDADES", fpv.descripcion AS "MÉTODOD DE PAGO"
FROM LineaVenta lv 
JOIN Venta ve ON ve.id = lv.venta_id 
LEFT JOIN Servicio se ON se.id = lv.servicio_id 
LEFT JOIN Bono b  ON b.id = lv.bono_id
JOIN FormaPagoVenta fpv ON fpv.id = ve.formaPago_id 
JOIN Instalacion i ON i.id = ve.instalacion_id
WHERE DATE(ve.fecha) BETWEEN "2022-1-1" AND "2022-1-7"
AND (ve.formaPago_id = 4 OR (ve.descuento > 0  or lv.descuentoLinea >0)) 
