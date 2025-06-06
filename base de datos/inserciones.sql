USE consultoro_manjon;

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

INSERT INTO odontologos (matricula, nombre_odon, apellido_odon, email_odon, telef_odon, dir_odon) VALUES 
('MAT001', 'Carla', 'González', 'carla.gonzalez@example.com', '123456789', 'Calle Falsa 123'),
('MAT002', 'Luis', 'Pérez', 'luis.perez@example.com', '987654321', 'Avenida Siempre Viva 456'),
('MAT003', 'Ana', 'López', 'ana.lopez@example.com', '456123789', 'Calle de la Paz 789'),
('MAT004', 'Sofia', 'Martínez', 'sofia.martinez@example.com', '321654987', 'Boulevard del Sol 321'),
('MAT005', 'Juan', 'Fernández', 'juan.fernandez@example.com', '789456123', 'Plaza Mayor 654');

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
(1, 'Historia clínica completa.', TRUE, TRUE, '2025-06-01'),
(2, 'Consulta inicial.', FALSE, FALSE, NULL),
(3, 'Tratamiento en curso.', FALSE, TRUE, NULL),
(4, 'Seguimiento de implantes.', TRUE, TRUE, '2025-05-20'),
(5, 'Revisión anual.', TRUE, FALSE, '2025-04-15');

INSERT INTO trat_pd_cd (id_trat, id_cd, id_pd, id_hc) VALUES 
(1, 1, 1, 1),
(2, 2, 2, 1),
(3, 3, 3, 2),
(4, 4, 4, 3),
(5, 5, 5, 4);

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

INSERT INTO pagos (id_cuota, id_entrega, pagado, fecha_limite, fecha_pago) VALUES 
(1, 1, TRUE, '2025-06-10', '2025-05-10'),
(2, 2, FALSE, '2025-07-10', NULL),
(3, 3, TRUE, '2025-08-10', '2025-07-15'),
(4, 4, FALSE, '2025-09-10', NULL);

