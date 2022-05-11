Queries para Whatapp

SELECT COUNT(DISTINCT instalacion_id) FROM `BonoSMS` bs
WHERE bs.fechaCompra >= "2021-01-01" AND bs.fechaCompra <=  "2021-12-01"

SELECT * FROM `Instalacion` ORDER BY `Instalacion`.`planKoibox_id` DESC