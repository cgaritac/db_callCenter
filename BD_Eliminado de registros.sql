USE call_center;

-- -----------------------------------------------------------------------------------------------------------------------------------
-- Comandos para el borrado de todos los registros de cada una de las tablas

SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE casos;
SET FOREIGN_KEY_CHECKS = 1;

SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE subcasos;
SET FOREIGN_KEY_CHECKS = 1;

SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE agentes;
SET FOREIGN_KEY_CHECKS = 1;

SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE estado_agentes;
SET FOREIGN_KEY_CHECKS = 1;

SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE estado_casos;
SET FOREIGN_KEY_CHECKS = 1;

SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE puesto_agentes;
SET FOREIGN_KEY_CHECKS = 1;

SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE tipo_casos;
SET FOREIGN_KEY_CHECKS = 1;

