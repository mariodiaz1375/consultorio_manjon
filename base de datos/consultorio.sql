DROP SCHEMA IF EXISTS consultorio_manjon;
CREATE SCHEMA consultorio_manjon;
USE consultorio_manjon;

CREATE TABLE puestos(
	id_puesto INT AUTO_INCREMENT,
    nombre_puesto VARCHAR(20) NOT NULL,
    CONSTRAINT pk_puestos PRIMARY KEY(id_puesto)
);

/*CREATE TABLE dias(
	id_dia INT AUTO_INCREMENT,
    dia VARCHAR(20) NOT NULL
);*/

/*CREATE TABLE horas(
	id_hora INT AUTO_INCREMENT,
    hora TIME NOT NULL,
    CONSTRAINT pk_hora PRIMARY KEY(id_hora)
);*/

CREATE TABLE personal(
	id_pers INT AUTO_INCREMENT,
    nom_pers VARCHAR(50) NOT NULL,
    ape_pers VARCHAR(50) NOT NULL,
    dni_pers VARCHAR(12) NOT NULL,
    fec_nac_pers DATE,
    dom_pers VARCHAR(50) NOT NULL,
    tel_pers VARCHAR(40) NOT NULL,
    email_pers VARCHAR(50),
    matricula VARCHAR(20),
    activo BOOLEAN DEFAULT TRUE,
    CONSTRAINT pk_pers PRIMARY KEY(id_pers)
);

CREATE TABLE personal_puestos(
	id_pers_puesto INT AUTO_INCREMENT,
	id_pers INT NOT NULL,
    id_puesto INT NOT NULL,
    CONSTRAINT pk_personal_puestos PRIMARY KEY(id_pers_puesto)
);

CREATE TABLE obras_sociales(
	id_os INT AUTO_INCREMENT,
    nombre_os VARCHAR(20) NOT NULL,
    CONSTRAINT pk_os PRIMARY KEY(id_os)
);

CREATE TABLE pacientes(
	id_pac INT AUTO_INCREMENT,
    nom_pac VARCHAR(50) NOT NULL,
    ape_pac VARCHAR(50) NOT NULL,
    dni_pac VARCHAR(12) NOT NULL,
    fec_nac_pac DATE,
    dom_pac VARCHAR(50) NOT NULL,
    tel_pac VARCHAR(40) NOT NULL,
    email_pac VARCHAR(50),
    activo BOOLEAN DEFAULT TRUE,
    CONSTRAINT pk_pac PRIMARY KEY(id_pac)
);

CREATE TABLE os_pacientes(
	id_os_pac INT AUTO_INCREMENT,
    id_pac INT NOT NULL,
    id_os INT NOT NULL,
    num_afiliado VARCHAR(50) NOT NULL,
    CONSTRAINT pk_os_pac PRIMARY KEY(id_os_pac)
);

CREATE TABLE analisis_funcionales(
	id_af INT AUTO_INCREMENT,
    nombre_af VARCHAR(30) NOT NULL,
    descripcion_af VARCHAR(100) ,
    CONSTRAINT pk_af PRIMARY KEY(id_af)
);


CREATE TABLE af_pacientes(
	id_af_pac INT AUTO_INCREMENT,
    id_pac INT NOT NULL,
    id_af INT NOT NULL,
    descripcion_af VARCHAR(100),
    CONSTRAINT pk_af_pac PRIMARY KEY(id_af_pac)
);

CREATE TABLE antecedentes(
	id_ant INT AUTO_INCREMENT,
    nom_ant VARCHAR(30) NOT NULL,
    descripcion_ant VARCHAR(100),
    CONSTRAINT pk_ant PRIMARY KEY(id_ant)
);

CREATE TABLE ant_pac(
	id_ant_pac INT AUTO_INCREMENT,
	id_pac INT NOT NULL,
    id_ant INT NOT NULL,
    descripcion_ant_pac VARCHAR(100),
    CONSTRAINT pk_ant_pac PRIMARY KEY(id_ant_pac)
);

CREATE TABLE especialidades (
id_esp INT AUTO_INCREMENT,
nombre_esp VARCHAR(30) NOT NULL,
CONSTRAINT pk_esp PRIMARY KEY(id_esp));

/*CREATE TABLE odontologos (
id_odon INT AUTO_INCREMENT,
matricula VARCHAR(20) NOT NULL,
nombre_odon VARCHAR(30) NOT NULL,
apellido_odon VARCHAR(30) NOT NULL,
dni_odon VARCHAR(12) NOT NULL,
email_odon VARCHAR(40),
telef_odon VARCHAR(30) NOT NULL,
dir_odon VARCHAR(40),
CONSTRAINT pk_odontologo PRIMARY KEY(id_odon));*/

CREATE TABLE odon_esp (
id_odonxesp INT AUTO_INCREMENT,
id_odon INT NOT NULL,
id_esp INT NOT NULL,
CONSTRAINT pk_odonxesp PRIMARY KEY(id_odonxesp));

CREATE TABLE estados_turnos (
id_est INT AUTO_INCREMENT,
nombre_est VARCHAR(30) NOT NULL,
CONSTRAINT pk_est PRIMARY KEY(id_est));

CREATE TABLE turnos (
id_turno INT AUTO_INCREMENT,
id_pac INT,
id_odon INT NOT NULL,
fecha_turno DATE NOT NULL,
hora_turno TIME NOT NULL,
estado_turno INT NOT NULL,
CONSTRAINT pk_turno PRIMARY KEY(id_turno));

CREATE TABLE piezas_dentales (
id_pieza INT AUTO_INCREMENT,
cod_pd VARCHAR(2) NOT NULL,
CONSTRAINT pk_piezas PRIMARY KEY(id_pieza));

CREATE TABLE caras_dentales (
id_cara INT AUTO_INCREMENT,
nomb_cara VARCHAR(20) NOT NULL,
CONSTRAINT pk_cd PRIMARY KEY(id_cara));

CREATE TABLE tratamientos (
id_trat INT AUTO_INCREMENT,
nom_trat VARCHAR(50) NOT NULL,
desc_trat VARCHAR(100),
CONSTRAINT pk_trat PRIMARY KEY(id_trat));

CREATE TABLE historia_clinica (
id_hc INT AUTO_INCREMENT,
id_paciente_hc INT NOT NULL,
id_odon_hc INT NOT NULL,
desc_hc VARCHAR(100),
fecha_inicio TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
fecha_fin DATE,
CONSTRAINT pk_hc PRIMARY KEY(id_hc));

CREATE TABLE detalles_hist_cli (
id_dethc INT AUTO_INCREMENT,
id_trat INT NOT NULL,
id_cd INT NOT NULL,
id_pd INT NOT NULL,
id_hc INT NOT NULL,
CONSTRAINT pk_dethc PRIMARY KEY(id_dethc));

CREATE TABLE entregas (
id_entrega INT AUTO_INCREMENT,
nom_entrega VARCHAR(20) NOT NULL,
CONSTRAINT pk_entregas PRIMARY KEY(id_entrega));

CREATE TABLE cuotas (
id_cuota INT AUTO_INCREMENT,
nom_cuota VARCHAR(20),
CONSTRAINT pk_cuotas PRIMARY KEY(id_cuota));

CREATE TABLE pagos (
id_pago INT AUTO_INCREMENT,
id_cuota INT NOT NULL,
id_entrega INT NOT NULL,
id_hc INT NOT NULL,
pagado BOOLEAN,
fecha_limite DATE,
fecha_pago DATETIME,
CONSTRAINT pk_pagos PRIMARY KEY(id_pago));

-- AGREGANDO CONSTRAINT A LAS TABLAS CON FORANEAS

ALTER TABLE personal_puestos ADD CONSTRAINT fk_perxp_pers
FOREIGN KEY (id_pers) REFERENCES personal (id_pers)
ON UPDATE CASCADE
ON DELETE CASCADE;
    
ALTER TABLE personal_puestos ADD CONSTRAINT fk_perxp_puesto
FOREIGN KEY (id_puesto) REFERENCES puestos (id_puesto)
ON UPDATE CASCADE
ON DELETE CASCADE;
    
ALTER TABLE os_pacientes ADD CONSTRAINT fk_osxpac_os
FOREIGN KEY (id_os) REFERENCES obras_sociales (id_os)
ON UPDATE CASCADE
ON DELETE CASCADE;
ALTER TABLE os_pacientes ADD CONSTRAINT fk_oscpac_pac
FOREIGN KEY (id_pac) REFERENCES pacientes (id_pac)
ON UPDATE CASCADE
ON DELETE CASCADE;
    
ALTER TABLE af_pacientes ADD CONSTRAINT fk_afxpac_pac
FOREIGN KEY (id_pac) REFERENCES pacientes (id_pac)
ON UPDATE CASCADE
ON DELETE CASCADE;
ALTER TABLE af_pacientes ADD CONSTRAINT fk_afxpac_af
FOREIGN KEY (id_af) REFERENCES analisis_funcionales (id_af)
ON UPDATE CASCADE;
    
ALTER TABLE ant_pac ADD CONSTRAINT fk_antxpac_pac
FOREIGN KEY (id_pac) REFERENCES pacientes (id_pac)
ON UPDATE CASCADE
ON DELETE CASCADE;
ALTER TABLE ant_pac ADD CONSTRAINT fk_antxpac_ant
FOREIGN KEY (id_ant) REFERENCES antecedentes (id_ant)
ON UPDATE CASCADE;

ALTER TABLE odon_esp 
ADD CONSTRAINT fk_odon
FOREIGN KEY (id_odon) REFERENCES personal(id_pers)
ON UPDATE CASCADE
ON DELETE CASCADE;
ALTER TABLE odon_esp 
ADD CONSTRAINT fk_esp
FOREIGN KEY (id_esp) REFERENCES especialidades(id_esp)
ON UPDATE CASCADE;

ALTER TABLE turnos 
ADD CONSTRAINT fk_est
FOREIGN KEY (estado_turno) REFERENCES estados_turnos(id_est);

ALTER TABLE historia_clinica
ADD CONSTRAINT fk_paciente
FOREIGN KEY (id_paciente_hc) REFERENCES pacientes(id_pac)
ON UPDATE CASCADE
ON DELETE CASCADE;
ALTER TABLE historia_clinica
ADD CONSTRAINT fk_odon_hc
FOREIGN KEY (id_odon_hc) REFERENCES personal(id_pers)
ON UPDATE CASCADE;

ALTER TABLE detalles_hist_cli
ADD CONSTRAINT fk_trat
FOREIGN KEY (id_trat) REFERENCES tratamientos(id_trat)
ON UPDATE CASCADE;

ALTER TABLE detalles_hist_cli
ADD CONSTRAINT fk_cd
FOREIGN KEY (id_cd) REFERENCES caras_dentales(id_cara)
ON UPDATE CASCADE;

ALTER TABLE detalles_hist_cli
ADD CONSTRAINT fk_pd
FOREIGN KEY (id_pd) REFERENCES piezas_dentales(id_pieza)
ON UPDATE CASCADE;

ALTER TABLE detalles_hist_cli
ADD CONSTRAINT fk_hc
FOREIGN KEY (id_hc) REFERENCES historia_clinica(id_hc)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE pagos
ADD CONSTRAINT fk_cuota
FOREIGN KEY (id_cuota) REFERENCES cuotas(id_cuota);
ALTER TABLE pagos
ADD CONSTRAINT fk_entrega
FOREIGN KEY (id_entrega) REFERENCES entregas(id_entrega);
ALTER TABLE pagos
ADD CONSTRAINT fk_hc_pag
FOREIGN KEY (id_hc) REFERENCES historia_clinica(id_hc)
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE turnos
ADD CONSTRAINT fk_pac
FOREIGN KEY (id_pac) REFERENCES pacientes(id_pac)
ON DELETE SET NULL
ON UPDATE CASCADE;
ALTER TABLE turnos
ADD CONSTRAINT fk_odon_tur
FOREIGN KEY (id_odon) REFERENCES personal(id_pers)
ON UPDATE CASCADE;

-- CREACION DE INDICES

CREATE INDEX idx_dni_pac ON pacientes (dni_pac);

CREATE INDEX idx_dni_pers ON personal (dni_pers);

