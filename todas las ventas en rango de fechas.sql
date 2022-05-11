SELECT cl.id AS idCliente, i.descripcion AS centro, ve.fecha, ve.numTicket, lv.servicio_id, lv.bono_id, lv.producto_id,
       lv.descripcion, lv.cantidad, lv.subtotal AS importe, fp.descripcion AS formaPago,
       CONCAT_WS(' ', u.nombre, u.apellidos) AS empleado, ve.descuento AS descuentoVenta,
       ve.tipoDescuento AS tipoDescuentoVenta, lv.descuentoLinea, lv.tipoDescuento AS tipoDescuentoLinea,
       ve.importeConsumidoPremioEmbajador, IF(cl.sexo_id=1, 'Hombre', 'Mujer') AS sexo,
       IF(cl.fechaNacimiento IS NOT NULL, (2021-YEAR(cl.fechaNacimiento)), "") AS edad,
       cl.laserPrevio, cl.codigoPostal, IF(cl.usuarioPortal_id IS NOT NULL, 'Si', 'No') AS citasOnline,
       cc.descripcion AS comoNosConocio
FROM LineaVenta lv
JOIN Venta ve ON ve.id = lv.venta_id
JOIN Cliente cl ON cl.id = ve.cliente_id
LEFT JOIN ComoNosConocioCliente cc ON cc.id = cl.ComoNosConocioCliente_id
JOIN Instalacion i ON ve.instalacion_id = i.id
JOIN FormaPagoVenta fp ON fp.id = ve.formaPago_id
JOIN Usuario u ON u.id = lv.usuario_id
WHERE DATE(ve.fecha) BETWEEN '2022-02-01' AND '2022-02-28'
ORDER BY cl.id