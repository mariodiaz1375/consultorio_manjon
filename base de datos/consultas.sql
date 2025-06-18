SELECT * FROM pacientes;
SELECT * FROM historia_clinica;

SELECT hc.id_hc, desc_hc, finalizado, fecha_inicio, fecha_fin, nom_trat, nomb_cara, pagado
FROM pacientes 
INNER JOIN historia_clinica hc ON id_pac = id_paciente_hc
INNER JOIN trat_pd_cd tpc ON hc.id_hc = tpc.id_hc
INNER JOIN piezas_dentales ON id_pieza = id_pd
INNER JOIN tratamientos trat ON trat.id_trat = tpc.id_trat
INNER JOIN caras_dentales cd ON id_cara = id_cd
WHERE dni_pac = "27555666" AND pagado = 0;

select * from pacientes;
select * from turnos;
select * from odontologos;
select * from empleados;

select * from historia_clinica where id_paciente_hc = 2;

select hc.id_hc, desc_hc, fecha_inicio, fecha_fin, nom_trat, nomb_cara
from historia_clinica hc
INNER JOIN trat_pd_cd tpc ON hc.id_hc = tpc.id_hc
INNER JOIN piezas_dentales ON id_pieza = id_pd
INNER JOIN tratamientos trat ON trat.id_trat = tpc.id_trat
INNER JOIN caras_dentales cd ON id_cara = id_cd
WHERE hc.id_hc = 2;