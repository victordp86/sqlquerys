SELECT er.cliente_id AS "ID CLIENTE",s.descripcion  AS "GÉNERO", YEAR(DATE(NOW())) - YEAR(cl.fechaNacimiento) AS "EDAD", DATE(cl.fechaNacimiento) AS "FECHA ENCUESTA" 
cl.codigoPostal AS "CP",  pr.textoRespuesta AS "RESPUESTA",
pr2.textoRespuesta AS "RESPUESTA", pr3.textoRespuesta AS "RESPUESTA", pr4.textoRespuesta  AS "RESPUESTA",
pr5.textoRespuesta  AS "RESPUESTA",
pr6.textoRespuesta  AS "RESPUESTA", pr7.textoRespuesta  AS "RESPUESTA", pr8.textoRespuesta  AS "RESPUESTA", pr9.textoRespuesta AS "RESPUESTA",
pr10.textoRespuesta AS "RESPUESTA" 
FROM PreguntaRespuesta pr 
JOIN PreguntaRespuesta pr2 ON pr.encuesta_id = pr2.encuesta_id AND pr2.pregunta_id = 18
JOIN PreguntaRespuesta pr3 ON pr.encuesta_id = pr3.encuesta_id AND pr3.pregunta_id = 19
JOIN PreguntaRespuesta pr4 ON pr.encuesta_id = pr4.encuesta_id AND pr4.pregunta_id = 20
JOIN PreguntaRespuesta pr5 ON pr.encuesta_id = pr5.encuesta_id AND pr5.pregunta_id = 21
JOIN PreguntaRespuesta pr6 ON pr.encuesta_id = pr6.encuesta_id AND pr6.pregunta_id = 22
JOIN PreguntaRespuesta pr7 ON pr.encuesta_id = pr7.encuesta_id AND pr7.pregunta_id = 23
JOIN PreguntaRespuesta pr8 ON pr.encuesta_id = pr8.encuesta_id AND pr8.pregunta_id = 24
JOIN PreguntaRespuesta pr9 ON pr.encuesta_id = pr9.encuesta_id AND pr9.pregunta_id = 25
JOIN PreguntaRespuesta pr10 ON pr.encuesta_id = pr10.encuesta_id AND pr10.pregunta_id = 26
JOIN EncuestaRealizada er ON pr.encuesta_id = er.id
JOIN Pregunta p ON p.id = pr.pregunta_id 
JOIN Cliente cl ON cl.id = er.cliente_id 
LEFT JOIN Sexo s ON s.id = cl.sexo_id
WHERE pr.pregunta_id = 17
AND p.encuesta_id = 3


/*
 * JOIN Sexo s ON s.id = cl.sexo_id
JOIN ComoNosConocioCliente cncc ON cncc.id = cl.comoNosConocioCliente_id 
, s.descripcion , cncc.descripcion 
 */




/*
JOIN PreguntaRespuesta pr5 ON pr.encuesta_id = pr5.encuesta_id AND pr5.pregunta_id =5
JOIN PreguntaRespuesta pr6 ON pr.encuesta_id = pr6.encuesta_id AND pr6.pregunta_id =6
JOIN PreguntaRespuesta pr7 ON pr.encuesta_id = pr7.encuesta_id AND pr7.pregunta_id =7
JOIN PreguntaRespuesta pr8 ON pr.encuesta_id = pr8.encuesta_id AND pr8.pregunta_id =8
JOIN PreguntaRespuesta pr9 ON pr.encuesta_id = pr9.encuesta_id AND pr9.pregunta_id =9
JOIN PreguntaRespuesta pr10 ON pr.encuesta_id = pr10.encuesta_id AND pr10.pregunta_id =10

*/