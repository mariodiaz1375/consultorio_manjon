USE consultorio_manjon;

INSERT INTO puestos (nombre_puesto) VALUES
('Secretario/a'),
('Limpieza'),
('Odontólogo'),
('Cajero/a');

INSERT INTO obras_sociales (nombre_os) VALUES
('OSECAC'),
('Boreal'),
('IPS'),
('PAMI'),
('Galeno');

INSERT INTO pacientes (nom_pac, ape_pac, dni_pac, fec_nac_pac, dom_pac, tel_pac, email_pac) VALUES
('Marcelo', 'García', '25111222', '1970-03-10', 'España 800', '3874112233', 'marcelo.garcia@email.com'),
('Verónica', 'Paz', '30222333', '1982-07-25', 'Caseros 150', '3875223344', 'veronica.paz@email.com'),
('Esteban', 'Castro', '28333444', '1975-01-15', 'Balcarce 300', '3874334455', 'esteban.castro@email.com'),
('Carolina', 'Soto', '33444555', '1990-09-01', 'Alvarado 650', '3875445566', 'carolina.soto@email.com'),
('Fernando', 'Acosta', '27555666', '1980-04-20', 'Dean Funes 400', '3874556677', 'fernando.acosta@email.com'),
('Romina', 'Quiroga', '31666777', '1988-11-12', 'San Martín 920', '3875667788', 'romina.quiroga@email.com'),
('Sergio', 'Herrera', '29777888', '1972-06-05', 'Mitre 250', '3874778899', 'sergio.herrera@email.com'),
('Julieta', 'Luna', '34888999', '1995-02-28', 'Rivadavia 710', '3875889900', 'julieta.luna@email.com'),
('Alejandro', 'Ramos', '26999000', '1977-08-18', 'Urquiza 110', '3874990011', 'alejandro.ramos@email.com'),
('Soledad', 'Ortiz', '32000111', '1991-05-03', 'Pueyrredón 530', '3875001122', 'soledad.ortiz@email.com'),
('Roberto', 'Benítez', '24111222', '1965-10-07', 'San Juan 200', '3874123123', 'roberto.benitez@email.com'),
('Mariela', 'Aguirre', '29222333', '1987-01-22', 'Entre Ríos 900', '3875234234', 'mariela.aguirre@email.com'),
('Gonzalo', 'Miranda', '27333444', '1979-03-14', 'Zuviría 450', '3874345345', 'gonzalo.miranda@email.com'),
('Laura', 'Peralta', '33444555', '1993-07-09', 'Chacabuco 700', '3875456456', 'laura.peralta@email.com'),
('Juan Cruz', 'Navarro', '26555666', '1974-12-01', 'Cordoba 100', '3874567567', 'juancruz.navarro@email.com'),
('Daniela', 'Fernández', '30666777', '1986-09-08', 'La Rioja 850', '3875678678', 'daniela.fernandez@email.com'),
('Martín', 'Giménez', '28777888', '1971-02-19', 'Santa Fe 300', '3874789789', 'martin.gimenez@email.com'),
('Florencia', 'Maidana', '34888999', '1994-04-24', 'Catamarca 600', '3875890890', 'florencia.maidana@email.com'),
('Gabriel', 'Nuñez', '25999000', '1968-06-30', 'Salta 50', '3874901901', 'gabriel.nunez@email.com'),
('Natalia', 'Vera', '31000111', '1989-10-16', 'Jujuy 220', '3875012012', 'natalia.vera@email.com');

INSERT INTO os_pacientes (id_pac, id_os, num_afiliado) VALUES
(1, 1, '25111222'),
(2, 2, '30222333'),
(3, 3, '28333444'),
(4, 4, '33444555'),
(5, 5, '27555666'),
(6, 1, '31666777'),
(7, 2, '29777888'),
(8, 3, '34888999'),
(9, 4, '26999000'),
(10, 5, '32000111');

INSERT INTO analisis_funcionales (nombre_af) VALUES
('Respiracion Normal'),
('Respiracion Nasal'),
('Respiracion Mixta'),
('Deglucion Normal'),
('Deglucion Atipica'),
('Actividad lingual');

INSERT INTO af_pacientes (id_pac, id_af) VALUES
(1, 3),
(1, 5),
(2, 1),
(2, 6),
(4, 3),
(10, 5),
(10, 6),
(13, 1),
(13, 3),
(15, 2),
(15, 6),
(16, 3),
(17, 2),
(18, 4);

INSERT INTO antecedentes (nom_ant) VALUES
("Alergias"),
("Anemia"),
("Artritis"),
("Asma"),
("Desnutricion"),
("Diabetes"),
("Epilepsia"),
("Embarazada o sospecha"),
("Fiebre Reumatica"),
("Glaucoma"),
("Hemorragias"),
("Hepatitis"),
("Herpes"),
("Hipertension");

INSERT INTO ant_pac (id_pac, id_ant) VALUES
(1, 3),
(1, 5),
(2, 9),
(2, 6),
(3, 4),
(4, 3),
(4, 2),
(5, 1),
(5, 7),
(6, 2),
(10, 5),
(10, 9),
(13, 10),
(13, 3),
(15, 2),
(15, 6),
(16, 3),
(17, 5),
(18, 12);

INSERT INTO especialidades (nombre_esp) VALUES 
('Ortodoncia'),
('Endodoncia'),
('Periodoncia'),
('Implantes'),
('Odontopediatría'),
('Estética'),
('Prostodoncia'),
('Cirugía Oral'),
('Odontología General');

INSERT INTO personal (nom_pers, ape_pers, dni_pers, fec_nac_pers, dom_pers, tel_pers, email_pers, matricula) VALUES 
('Laura', 'Sánchez', '27123456', '1984-03-12', 'Av. Rivadavia 1234', '1167892345', 'laura.sanchez@email.com', 'M10001'),
('Ricardo', 'Molina', '28234567', '1978-07-19', 'Calle San Juan 456', '1145678234', 'ricardo.molina@email.com', 'M10002'),
('Ana', 'Cabrera', '29543210', '1990-12-03', 'Av. Belgrano 789', '1154321876', 'ana.cabrera@email.com', 'M10003'),
('Héctor', 'Giménez', '30123456', '1982-05-20', 'Mitre 456', '1134567891', 'hector.gimenez@email.com', 'M10004'),
('Verónica', 'Ramos', '27678901', '1986-11-08', 'Salta 1000', '1176543209', 'veronica.ramos@email.com', 'M10005'),
('Daniel', 'Vega', '28890123', '1975-08-25', 'Perón 123', '1123987612', 'daniel.vega@email.com', NULL),
('Mariela', 'Acosta', '31234567', '1991-09-14', 'Entre Ríos 2345', '1187654321', 'mariela.acosta@email.com', NULL),
('Gustavo', 'Silva', '27987654', '1983-02-28', 'Callao 3456', '1165432198', 'gustavo.silva@email.com', NULL),
('Patricia', 'Navarro', '29098765', '1987-06-11', 'Av. Córdoba 678', '1156784321', 'patricia.navarro@email.com', NULL),
('Sergio', 'Morales', '28567890', '1979-10-07', 'Santa Fe 1200', '1178123490', 'sergio.morales@email.com', NULL);

INSERT INTO personal_puestos (id_pers, id_puesto) VALUES
(1, 3),
(2, 3),
(3, 3),
(4, 3),
(5, 3),
(6, 2),
(7, 1),
(7, 2),
(8, 4),
(9, 1),
(10, 1);

INSERT INTO odon_esp (id_odon, id_esp) VALUES 
(1, 1), 
(1, 2), 
(2, 1), 
(2, 3),
(3, 2),
(3, 4),
(4, 5),
(5, 6);

INSERT INTO turnos (id_pac, id_odon, fecha_turno, hora_turno) VALUES
(3, 1, '2025-08-25', '09:00:00'),
(7, 2, '2025-08-26', '10:30:00'),
(5, 3, '2025-08-27', '11:00:00'),
(12, 4, '2025-08-28', '14:00:00'),
(8, 5, '2025-08-29', '15:30:00'),
(14, 1, '2025-08-30', '09:30:00'),
(2, 2, '2025-09-01', '08:00:00'),
(9, 3, '2025-09-01', '16:00:00'),
(11, 4, '2025-09-02', '12:30:00'),
(4, 5, '2025-09-03', '13:00:00'),
(15, 1, '2025-09-03', '10:00:00'),
(6, 2, '2025-09-04', '11:30:00'),
(17, 3, '2025-09-05', '14:30:00'),
(10, 4, '2025-09-06', '15:00:00'),
(1, 5, '2025-09-06', '16:30:00'),
(13, 1, '2025-09-07', '08:30:00'),
(18, 2, '2025-09-08', '09:45:00'),
(19, 3, '2025-09-08', '10:15:00'),
(20, 4, '2025-09-09', '11:45:00'),
(16, 5, '2025-09-10', '13:30:00');

INSERT INTO piezas_dentales (cod_pd) VALUES 
('11'),
('12'),
('13'),
('14'),
('15'),
('16'),
('17'),
('18'),
('21'),
('22');

INSERT INTO caras_dentales (nomb_cara) VALUES 
('Mesial'), 
('Distal'), 
('Vestibular'), 
('Lingual'), 
('Oclusal');

INSERT INTO tratamientos (nom_trat, desc_trat) VALUES 
('Limpieza Dental', 'Limpieza profesional de dientes.'),
('Blanqueamiento Dental', 'Tratamiento para blanquear los dientes.'),
('Ortodoncia', 'Corrección de dientes y mandíbulas desalineadas.'),
('Implantes Dentales', 'Sustitución de dientes perdidos.'),
('Extracción Dental', 'Extracción de dientes problemáticos.');

INSERT INTO historia_clinica (id_paciente_hc, id_odon_hc, desc_hc, fecha_fin) VALUES
(1, 1, 'Control inicial y limpieza', '2025-07-15'),
(2, 2, NULL, NULL),
(3, 3, 'Extracción de muela del juicio', '2025-08-01'),
(4, 4, NULL, NULL),
(5, 5, 'Tratamiento de caries en molar inferior', NULL),
(6, 1, 'Seguimiento de ortodoncia', NULL),
(7, 2, NULL, NULL),
(8, 3, 'Evaluación para prótesis dental', '2025-06-30'),
(9, 4, NULL, NULL),
(10, 5, 'Blanqueamiento dental', NULL),
(11, 1, NULL, NULL),
(12, 2, 'Colocación de resina en incisivo', '2025-07-20'),
(13, 3, NULL, NULL),
(14, 4, 'Limpieza semestral', NULL),
(15, 5, NULL, NULL),
(16, 1, 'Tratamiento de encías', '2025-08-10'),
(17, 2, NULL, NULL),
(18, 3, NULL, NULL),
(19, 4, 'Revisión post-operatoria', '2025-07-01'),
(20, 5, NULL, NULL);

INSERT INTO trat_pd_cd (id_trat, id_cd, id_pd, id_hc) VALUES 
(1, 1, 1, 1),
(2, 2, 2, 1),
(3, 3, 3, 2),
(1, 1, 4, 2),
(2, 2, 5, 2),
(3, 1, 1, 3),
(4, 3, 2, 3),
(5, 4, 3, 4),
(1, 2, 4, 5),
(2, 3, 5, 5),
(3, 1, 1, 6),
(4, 2, 2, 6),
(5, 3, 3, 7),
(1, 4, 4, 7),
(2, 1, 5, 8),
(3, 2, 1, 8),
(4, 3, 2, 9),
(5, 4, 3, 9),
(1, 1, 1, 10),
(2, 2, 2, 10),
(3, 3, 3, 11),
(4, 4, 4, 11),
(5, 5, 5, 12),
(1, 1, 2, 12),
(2, 2, 3, 13),
(3, 3, 4, 13),
(4, 4, 5, 14),
(5, 5, 1, 14),
(1, 2, 2, 15),
(2, 1, 3, 1),
(3, 3, 4, 2),
(4, 2, 5, 3),
(5, 1, 1, 4),
(1, 2, 2, 5),
(2, 3, 3, 6),
(3, 1, 4, 7),
(4, 4, 5, 8),
(5, 2, 1, 9),
(1, 3, 2, 10),
(2, 1, 3, 11),
(3, 2, 4, 12),
(4, 3, 5, 13),
(5, 4, 1, 14),
(1, 5, 2, 15),
(2, 1, 3, 1),
(3, 2, 4, 2),
(4, 3, 5, 3),
(5, 5, 1, 4),
(1, 1, 2, 5),
(2, 2, 3, 6),
(3, 3, 4, 7),
(4, 4, 5, 8),
(5, 5, 1, 9),
(1, 2, 2, 10),
(2, 3, 3, 11),
(3, 1, 4, 12),
(4, 2, 5, 13),
(5, 1, 1, 14),
(1, 2, 2, 15),
(2, 3, 3, 1),
(3, 1, 4, 2),
(4, 2, 5, 3),
(5, 4, 1, 4),
(1, 5, 2, 5);

INSERT INTO entregas (nom_entrega) VALUES 
('Entrega 1'),
('Entrega 2');

INSERT INTO cuotas (nom_cuota) VALUES 
('Cuota 1'),
('Cuota 2'),
('Cuota 3'),
('Cuota 4'),
('Cuota 5'),
('Cuota 6'),
('Cuota 7'),
('Cuota 8'),
('Cuota 9'),
('Cuota 10'),
('Cuota 11'),
('Cuota 12');

INSERT INTO pagos (id_cuota, id_entrega, id_hc, pagado, fecha_limite, fecha_pago) VALUES 
(2, 2, 3, FALSE, '2025-07-10', NULL),
(3, 1, 1, TRUE, '2025-08-10', '2025-07-15'),
(4, 2, 4, FALSE, '2025-09-10', NULL),
(1, 1, 1, TRUE, '2025-06-15', '2025-06-01'),
(2, 2, 2, FALSE, '2025-07-10', NULL),
(3, 1, 3, FALSE, '2025-08-15', NULL),
(4, 2, 4, TRUE, '2025-09-10', '2025-08-25'),
(1, 1, 5, TRUE, '2025-10-15', '2025-09-30'),
(2, 2, 6, FALSE, '2025-11-10', NULL),
(3, 1, 7, TRUE, '2025-12-15', '2025-12-01'),
(4, 2, 8, FALSE, '2025-01-10', NULL),
(1, 1, 9, TRUE, '2025-02-15', '2025-01-31'),
(2, 2, 10, FALSE, '2025-03-10', NULL);


