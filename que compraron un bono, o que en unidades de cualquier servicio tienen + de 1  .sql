SELECT ve.cliente_id AS "ID CLIENTE", DATE(ve.fecha ) AS "FECHA",  i.descripcion AS "CENTRO", i.cif AS "COD. IDENTIFICACIÓN EMPRESA",  se.descripcion AS "SERVICIO" , b.nombre AS "BONO", lv.cantidad AS "UNIDADES SERVICIO", ve.total AS "IMPORTE ABONADO", fpv.descripcion AS "MÉTODO DE PAGO" 
FROM `LineaVenta` lv 
JOIN Venta ve ON ve.id = lv.venta_id 
LEFT JOIN Servicio se ON se.id  = lv.servicio_id 
LEFT JOIN Bono b On b.id = lv.bono_id
JOIN Instalacion i ON i.id = ve.instalacion_id 
JOIN FormaPagoVenta fpv ON fpv.id = ve.formaPago_id 
WHERE ve.fecha >= '2020-08-01' AND ve.fecha <= '2020-08-31' AND lv.producto_id IS NULL AND (bono_id IS NOT NULL or lv.cantidad >= 2 )
