SELECT ve.cliente_id, ve.fecha, ve.instalacion_id, se.descripcion, b.detalle, ve.importeIva, fpv.descripcion
FROM LineaVenta lv 
JOIN Venta ve ON ve.id = lv.venta_id 
JOIN Servicio se ON se.id = lv.servicio_id 
JOIN Bono b ON b.id = lv.bono_id 
JOIN FormaPagoVenta fpv ON fpv.id = ve.formaPago_id 
JOIN Instalacion i ON i.id = ve.instalacion_id 
WHERE DATE(ve.fecha) = "2020-02-14"