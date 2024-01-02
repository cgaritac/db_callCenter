USE call_center;

-- -----------------------------------------------------------------------------------------------------------------------------------
-- Comandos para la inserción de nuevos registros a cada una de las tablas

INSERT INTO estado_agentes (idEstado_Agentes, EstadoAgentes_Nombre) VALUES 
(1,'Activo'),
(2,'Inactivo');

INSERT INTO estado_casos (idEstado_Casos, EstadoCasos_Nombre) VALUES 
(1,'Pendiente'),
(2,'En Progreso'),
(3,'En Pausa'),
(4,'Completado'),
(5,'Cancelado');

INSERT INTO puesto_agentes (idPuesto_Agentes, PuestoAgentes_Nombre, Salario) VALUES 
(1,'P1', 200000),
(2,'P2', 300000),
(3,'P3', 400000),
(4,'P4', 500000),
(5,'P5', 600000);

INSERT INTO tipo_casos (idTipo_Casos, TiposCasos_Nombre) VALUES 
(1,'Cancelación de cuenta'),
(2,'Creación de cuenta'),
(3,'Modificación de cuenta');

INSERT INTO agentes (idAgente, Agente_Nombre, Usuario_Red, Extension, idEstado_Agente, Fecha_Nacimiento, idPuesto_Agentes) VALUES 
(1,'Carlos','cgc123',1327,1,'1985-01-02',3),
(2,'María','mna123',1329,1,'1990-06-20',4);

INSERT INTO casos (idCodigo_Caso, idTipo_Caso, Fecha_Creacion, idEstado_Casos, Fecha_Cierre, idAgente, Descripcion_Caso) VALUES 
(1,2,'2019-01-02',5,'2019-01-20',1,'Queja'),
(2,3,'2019-03-19',1,'2019-03-30',1,'Consulta'),
(3,1,'2019-05-15',3,'2019-05-22',2,'Consulta');

INSERT INTO subcasos (idSubCasos, idEstado_Casos, Fecha_Completado, Descripcion_SubCaso, idCodigo_Caso) VALUES 
(1,1,'2019-10-27', 'Queja',3),
(2,1,'2019-10-26', 'Consulta',3),
(3,3,'2019-10-25', 'Queja',2),
(4,5,'2019-10-24', 'Queja',1),
(5,4,'2019-10-23', 'Consulta',1),
(6,1,'2019-10-22', 'Queja',1),
(7,2,'2019-10-21', 'Consulta',1);
