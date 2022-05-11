SELECT CONCAT_WS(" ",cl.nombre, cl.apellido1, cl.apellido2) as "CLIENTE", CONCAT_WS(" ",u.nombre, u.apellidos) as "EMPLEADO", DATE(ve.fecha) AS "FECHA", fpv.descripcion AS "FORMA DE PAGO", if (ve.pagado=0, "No", "Si") AS "PAGADO", ve.descuento AS "DESCUENTO", ve.total AS "TOTAL" 
FROM Venta ve
JOIN Cliente cl ON cl.id = ve.cliente_id
JOIN Usuario u ON u.id= ve.usuario_id
JOIN FormaPagoVenta fpv ON fpv.id = ve.formaPago_id 
JOIN Instalacion i ON i.id = ve.instalacion_id
WHERE DATE(ve.fecha) BETWEEN "2021-08-01" AND "2021-08-31"
ORDER BY ve.fecha ASC