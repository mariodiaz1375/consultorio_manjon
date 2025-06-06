USE consultorio_manjon;

CREATE TABLE especialidades (
id_esp INT AUTO_INCREMENT,
nombre_esp VARCHAR(13) NOT NULL,
CONSTRAINT pk_esp PRIMARY KEY(id_esp));

CREATE TABLE odontologos (
id_odon INT AUTO_INCREMENT,
matricula VARCHAR(20) NOT NULL,
nombre_odon VARCHAR(30) NOT NULL,
apellido_odon VARCHAR(30) NOT NULL,
email_odon VARCHAR(40),
telef_odon VARCHAR(30) NOT NULL,
dir_odon VARCHAR(40),
CONSTRAINT pk_odontologo PRIMARY KEY(id_odon));

CREATE TABLE odon_esp (
id_odonxesp INT AUTO_INCREMENT,
id_odon INT NOT NULL,
id_esp INT NOT NULL,
CONSTRAINT pk_odonxesp PRIMARY KEY(id_odonxesp));

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

CREATE TABLE pagos (
id_pago INT AUTO_INCREMENT,
id_cuota INT,
id_entrega INT,
pagado BOOLEAN,
fecha_limite DATE,
fecha_pago TIMESTAMP DEFAULT CURRENT_TIMESTAMP);

CREATE TABLE entregas (
id_entrega INT AUTO_INCREMENT,
nom_entrega VARCHAR(20) NOT NULL);

CREATE TABLE cuotas (
id_cuota INT AUTO_INCREMENT,
nom_cuota VARCHAR(20));

CREATE TABLE historia_clinica (
id_hc INT AUTO_INCREMENT,
id_paciente_hc INT NOT NULL,
desc_hc VARCHAR(100),
finalizado BOOLEAN,
pagado BOOLEAN,
fecha_inicio TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
fecha_fin TIMESTAMP DEFAULT CURRENT_TIMESTAMP);

CREATE TABLE trat_pd_cd (
id_trat_pd_cd INT AUTO_INCREMENT,
id_trat INT NOT NULL,
id_cd INT NOT NULL,
id_pd INT NOT NULL,
id_hc INT NOT NULL);


-- AGREGANDO CONSTRAINT A LAS TABLAS CON FORANEAS
ALTER TABLE odon_esp 
ADD CONSTRAINT fk_odon
FOREIGN KEY (id_odon) REFERENCES odontologos(id_odon);

ALTER TABLE odon_esp 
ADD CONSTRAINT fk_esp
FOREIGN KEY (id_esp) REFERENCES especialidades(id_esp);

ALTER TABLE historia_clinica
ADD CONSTRAINT fk_paciente
FOREIGN KEY (id_paciente_hc) REFERENCES pacientes(id_pac);

