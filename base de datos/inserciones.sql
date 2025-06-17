USE consultoro_manjon;

INSERT INTO puestos (nombre_puesto) VALUES
('Secretario/a'),
('Limpieza'),
('Cajero/a');

INSERT INTO empleados (nom_emp, ape_emp, dni_emp, fec_nac_emp, dom_emp, tel_emmp, email_emp) VALUES
('Pedro', 'Mamani', '30123456', '1985-08-10', 'Leguizamon 543', '3874123456', 'pedro.mamani@email.com'),
('Sofía', 'Cruz', '35987654', '1992-03-20', 'Necochea 789', '3875678901', 'sofia.cruz@email.com'),
('Ricardo', 'Flores', '28012345', '1978-11-05', 'Entre Rios 123', '3874987654', 'ricardo.flores@email.com'),
('Romina', 'Vargas', '33901234', '1993-02-18', 'Ayacucho 707', '3874667788', 'romina.vargas@email.com');

INSERT INTO empleados_puestos (id_emp, id_puesto) VALUES
(1, 3),
(2, 1),
(2, 2),
(3, 1),
(4, 2);

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

INSERT INTO os_pacientes (id_pac, id_os, titular_os, dni_titular_os) VALUES
(1, 1, 'Marcelo García', '25111222'),
(2, 2, 'Verónica Paz', '30222333'),
(3, 3, 'Esteban Castro', '28333444'),
(4, 4, 'Carolina Soto', '33444555'),
(5, 5, 'Fernando Acosta', '27555666'),
(6, 1, 'Romina Quiroga', '31666777'),
(7, 2, 'Sergio Herrera', '29777888'),
(8, 3, 'Julieta Luna', '34888999'),
(9, 4, 'Alejandro Ramos', '26999000'),
(10, 5, 'Soledad Ortiz', '32000111');

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

INSERT INTO odontologos (matricula, nombre_odon, apellido_odon, dni_odon, email_odon, telef_odon, dir_odon) VALUES 
('MAT001', 'Carla', 'González', '12345678A', 'carla.gonzalez@example.com', '555-1234', 'Calle Principal 123'),
('MAT002', 'Luis', 'Pérez', '23456789B', 'luis.perez@example.com', '555-5678', 'Avenida Libertad 456'),
('MAT003', 'Ana', 'López', '34567890C', 'ana.lopez@example.com', '555-8765', 'Calle Falsa 789'),
('MAT004', 'Javier', 'Martínez', '45678901D', 'javier.martinez@example.com', '555-4321', 'Plaza Nueva 321'),
('MAT005', 'Sofía', 'Rodríguez', '56789012E', 'sofia.rodriguez@example.com', '555-2345', 'Calle del Sol 654'),
('MAT006', 'José', 'Hernández', '67890123F', 'jose.hernandez@example.com', '555-8765', 'Avenida del Mar 987'),
('MAT007', 'María', 'García', '78901234G', 'maria.garcia@example.com', '555-3456', 'Calle de la Paz 135'),
('MAT008', 'Diego', 'Sánchez', '89012345H', 'diego.sanchez@example.com', '555-6543', 'Calle de la Luna 246'),
('MAT009', 'Claudia', 'Jiménez', '90123456I', 'claudia.jimenez@example.com', '555-1238', 'Calle de la Selva 357'),
('MAT010', 'Pedro', 'Fernández', '01234567J', 'pedro.fernandez@example.com', '555-9876', 'Calle del Agua 468');

INSERT INTO odon_esp (id_odon, id_esp) VALUES 
(1, 1), 
(1, 2), 
(2, 1), 
(2, 3),
(3, 2),
(3, 4),
(4, 5),
(5, 6);

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

INSERT INTO historia_clinica (id_paciente_hc, desc_hc, finalizado, pagado, fecha_fin) VALUES 
(1, 'Consulta inicial para revisión dental.', TRUE, TRUE, '2025-01-10'),
(2, 'Tratamiento de ortodoncia recomendado.', FALSE, FALSE, NULL),
(3, 'Extracción de muela de juicio realizada.', TRUE, TRUE, '2025-02-15'),
(4, 'Control de caries y limpiezas.', TRUE, TRUE, '2025-03-20'),
(5, 'Impresiones para prótesis dentales.', FALSE, FALSE, NULL),
(1, 'Seguimiento del tratamiento de ortodoncia.', TRUE, TRUE, '2025-04-25'),
(2, 'Tratamiento de conducto necesario.', FALSE, FALSE, NULL),
(6, 'Diagnóstico de bruxismo.', TRUE, TRUE, '2025-05-30'),
(7, 'Consulta para blanqueamiento dental.', TRUE, FALSE, NULL),
(8, 'Revisión anual de salud dental.', TRUE, TRUE, '2025-06-10'),
(3, 'Control de endodoncia realizada.', TRUE, TRUE, '2025-07-15'),
(4, 'Limpieza profunda y recomendación de flúor.', TRUE, TRUE, '2025-08-20'),
(5, 'Tratamiento temporal de emergencias dentales.', TRUE, TRUE, '2025-09-25'),
(9, 'Planificación de implantes dentales.', FALSE, FALSE, NULL),
(10, 'Consulta por dolor agudo en muela.', TRUE, TRUE, '2025-10-10'),
(2, 'Seguimiento de tratamiento de conducto.', FALSE, FALSE, NULL),
(11, 'Evaluación de tratamiento periodontal.', TRUE, TRUE, '2025-11-15'),
(12, 'Control post-tratamiento de endodoncia.', TRUE, TRUE, '2025-12-20'),
(1, 'Consulta de control anual.estado de salud.', TRUE, TRUE, '2025-01-30'),
(13, 'Diagnóstico avanzado de enfermedad periodontal.', TRUE, TRUE, '2025-02-10'),
(14, 'Extracción programada de muela de juicio.', FALSE, FALSE, NULL),
(8, 'Consulta post-tratamiento de ortodoncia.', TRUE, TRUE, '2025-03-05'),
(15, 'Chequeo después de blanqueamiento dental.', TRUE, FALSE, NULL),
(3, 'Revisión anual de estado bucal.', TRUE, TRUE, '2025-04-20'),
(11, 'Tratamiento de caries múltiple.', TRUE, TRUE, '2025-05-15'),
(12, 'Evaluación general y recomendaciones.', TRUE, TRUE, '2025-06-15'),
(2, 'Control y seguimiento del dolor.', TRUE, TRUE, '2025-07-20'),
(5, 'Consulta para extracción dental.', TRUE, TRUE, '2025-08-25'),
(9, 'Tratamiento de ortodoncia seguimiento.', TRUE, TRUE, '2025-09-30'),
(10, 'Control de tratamiento de conducto.',  FALSE, FALSE, NULL),
(6, 'Consulta de control de piezas dentales.', TRUE, TRUE, '2025-10-05'),
(14, 'Revisión de encías y salud dental.', TRUE, TRUE, '2025-11-10'),
(1, 'Chequeo de rutina y limpieza dental.', TRUE, FALSE, NULL),
(15, 'Limpieza dental programada.', TRUE, TRUE, '2025-12-25'),
(8, 'Control dental y recomendaciones.', TRUE, TRUE, '2025-01-05'),
(4, 'Consulta de control de ortodoncia.', TRUE, TRUE, '2025-02-15'),
(3, 'Seguimiento de tratamiento de caries.', TRUE, TRUE, '2025-03-25'),
(12, 'Consulta dental regular.', TRUE, FALSE, NULL),
(2, 'Diagnóstico de caries y tratamiento.', TRUE, TRUE, '2025-04-10'),
(7, 'Evaluación de piezas dentales.', TRUE, TRUE, '2025-05-20'),
(8, 'Control general y Limpieza dental.', TRUE, FALSE, NULL),
(1, 'Consulta de control y diagnóstico del tratamiento.', TRUE, TRUE, '2025-06-15'),
(14, 'Tratamiento de encías necesario.', FALSE, FALSE, NULL),
(15, 'Chequeo bucales y tratamiento.', TRUE, TRUE, '2025-07-20'),
(9, 'Consulta para dolor en muela.', TRUE, TRUE, '2025-08-25'),
(11, 'Tratamiento control de encías.', TRUE, TRUE, '2025-09-10'),
(13, 'Seguimiento de salud dental.', TRUE, TRUE, '2025-10-15'),
(5, 'Control de salud dental regular.', TRUE, FALSE, NULL),
(6, 'Consulta dental seguimientos.', TRUE, TRUE, '2025-11-20'),
(3, 'Consulta de diagnóstico preliminar.', TRUE, TRUE, '2025-12-25'),
(10, 'Evaluación sistemática y recomendaciones.', TRUE, TRUE, '2025-01-30'),
(12, 'Consulta de revisión de tratamientos previos.', TRUE, FALSE, NULL),
(4, 'Seguimiento de tratamiento en curso.', TRUE, TRUE, '2025-02-10'),
(7, 'Diagnóstico de placa y control.', TRUE, TRUE, '2025-03-15'),
(12, 'Consulta por molestias dentales.', TRUE, TRUE, '2025-04-20'),
(1, 'Chequeo de rutina y limpieza dental.', TRUE, FALSE, NULL);

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


SELECT * FROM pagos;


