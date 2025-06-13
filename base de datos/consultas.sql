SELECT * FROM pacientes;
SELECT * FROM historia_clinica;

SELECT id_pac, nom_pac, desc_hc, finalizado, pagado, fecha_inicio, fecha_fin, nom_trat, nomb_cara
FROM pacientes INNER JOIN historia_clinica hc ON id_pac = id_paciente_hc
INNER JOIN trat_pd_cd tpc ON id_hc.hc = id_hc.tpc
GROUP BY id_pac
ORDER BY id_pac;