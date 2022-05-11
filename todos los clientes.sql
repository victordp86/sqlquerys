SELECT cl.nombre  AS "NOMBRE", cl.apellido1  AS "PRIMER APELLIDO", cl.apellido2 AS "SEGUNDO APELLIDO", i.descripcion AS "CENTRO", s.descripcion AS "GÉNERO",
cl.dni AS "DNI",cl.telefonoMovil AS "T. MOVIL" , cl.telefonoFijo AS "T. FIJO", cl.email  AS "EMAIL", cl.direccion  AS "DIRECCIÓN", cl.fechaNacimiento  AS "F. NACIMIENTO", 
cnc.descripcion AS "COMO NOS CONOCIÓ", cl.activo AS "ACTIOV", cl.fechaAlta AS "F. ALTA", cl.importeVentas AS "IMPORTE VENTAS",
cl.importeDeuda AS "IMPORTE DEUDA", cl.notas AS "NOTAS", cl.informacionClinica AS "INFORMACIÓN CLÍNICA", cl.suscritoNewsletter AS "SUSCRITO NEWSLETTER", cl.EmailClientePasivoEnviado AS "ENVIO EMAIL",
cl.fechaUltimaVenta AS "FECHA ÚLTIMA VENTA"
FROM Cliente cl
JOIN Instalacion i ON i.id = cl.instalacion_id 
JOIN Sexo s ON s.id = cl.sexo_id 
JOIN City c ON c.id = cl.city_id 
JOIN ComoNosConocio cnc  ON cnc.id = cl.comoNosConocioCliente_id 