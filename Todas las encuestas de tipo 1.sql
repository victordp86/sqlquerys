SELECT * FROM PreguntaRespuesta pr  
JOIN EncuestaRealizada er ON er.id = pr.encuesta_id 
JOIN Pregunta p ON p.id = pr.pregunta_id 
WHERE pr.pregunta_id  in (1,2,3,4,5,6,7)
AND p.encuesta_id = 1
GROUP BY cliente_id