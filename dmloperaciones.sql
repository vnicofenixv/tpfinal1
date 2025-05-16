-- Deposito
INSERT INTO deposito (dep_zona) VALUES ('Zona A'), ('Zona B');
INSERT INTO deposito (dep_zona) VALUES ('Zona A'), ('Zona B');
INSERT INTO deposito (dep_zona) VALUES ('Zona A'), ('Zona B');

-- Montacarga
INSERT INTO montacarga (mont_nom, mont_tipo, mont_cap)
VALUES ('Montacarga 1', 'Diesel', '3000kg'),
       ('Montacarga 2', 'Electrico', '2000kg');

-- Operador
INSERT INTO operador (op_nom, op_apellido, op_ci, op_tel, dep_cod)
VALUES ('Juan', 'Perez', 1234567, '098111222', 1),
       ('Maria', 'Gomez', 7654321, '098333444', 2);

-- Relación operador ↔ montacarga
INSERT INTO operador_montacarga (op_cod, mont_cod)
VALUES (1, 1),
       (2, 2);

-- Cliente
INSERT INTO cliente (cli_nom, cli_email, cli_tel)
VALUES ('Cliente 1', 'cliente1@mail.com', '099555666');

-- Despachante
INSERT INTO despachante (desp_nom, desp_apellido, desp_ci, desp_tel, desp_email, cli_cod)
VALUES ('Carlos', 'Lopez', 1122334, '099999000', 'carlos@mail.com', 1);

-- Documento
INSERT INTO documento (doc_nom, desp_cod)
VALUES ('Factura 001', 1);

-- Aduana
INSERT INTO aduana (adu_nom, adu_apellido, adu_ci, adu_divis, adu_tel, adu_email)
VALUES ('Pedro', 'Rojas', 3344556, 'División Norte', '098888777', 'pedro@aduana.com');

-- Operativa
INSERT INTO operativa (op_nom, op_fecha, op_inicio, op_termino, adu_cod)
VALUES ('Operativa A', '2025-05-16', '08:00', '12:00', 1);

-- ATC
INSERT INTO atc (atc_nom, atc_apellido, atc_ci, atc_tel, atc_email, op_cod, doc_cod)
VALUES ('Laura', 'Fernandez', 7788990, '097777555', 'laura@mail.com', 1, 1);

-- Encargado
INSERT INTO encargado (enc_nom, enc_apellido, enc_ci, enc_tel, enc_email, atc_cod, dep_cod)
VALUES ('Jose', 'Martinez', 2233445, '099000111', 'jose@mail.com', 1, 1);

-- Asistente
INSERT INTO asistente (as_nom, as_apellido, as_ci, as_tel, dep_cod)
VALUES ('Victor', 'Gonzalez', 5566778, '098123123', 1);

-- CFS
INSERT INTO cfs (cfs_nom, cfs_obs, as_cod)
VALUES ('CFS Central', 'Observación de prueba', 1);
