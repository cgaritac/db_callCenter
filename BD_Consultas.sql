USE call_center;

-- -----------------------------------------------------------------------------------------------------------------------------------
-- Consulta que devuelve todos los casos, ordenados por la descripción del estado del caso

SELECT 
	idCodigo_Caso AS 'Código Caso',
	Fecha_Creacion AS 'Fecha Creación de Caso', 
    casos.idAgente AS 'Código Agente', 
    Agente_Nombre AS 'Nombre de Agente',
    Descripcion_Caso AS 'Descripción General de Caso', 
	estado_casos.idEstado_Casos AS 'Código Estado de Caso', 
	EstadoCasos_Nombre AS 'Descripción Estado de Caso',     	
	casos.idTipo_Caso AS 'Código Tipo de Caso', 
	TiposCasos_Nombre AS 'Descripción Tipo de Caso', 
	Fecha_Cierre AS 'Fecha Cierre de Caso'
FROM casos
INNER JOIN agentes ON casos.idAgente = agentes.idAgente
INNER JOIN estado_casos ON casos.idEstado_Casos = estado_casos.idEstado_Casos
INNER JOIN tipo_casos ON casos.idTipo_Caso = tipo_casos.idTipo_Casos
order by estado_casos.idEstado_Casos asc;

-- -----------------------------------------------------------------------------------------------------------------------------------
/* Consulta que contiene todos los casos ordenados por la descripción del tipo de caso, y que cuenta la cantidad de sub-casos que
cada caso posee*/ 

SELECT 
	casos.idTipo_Caso AS 'Código Tipo de Caso', 
	TiposCasos_Nombre AS 'Descripción Tipo de Caso', 
    casos.idCodigo_Caso AS 'Código Caso',
    Descripcion_Caso AS 'Descripción Caso', 
    estado_casos.idEstado_Casos AS 'Código Estado de Caso', 
	EstadoCasos_Nombre AS 'Descripción Estado de Caso',
    (SELECT count(idSubCasos) FROM subcasos 
	where casos.idCodigo_Caso = subcasos.idCodigo_Caso) AS 'Cantidad Subcasos'
FROM casos
INNER JOIN tipo_casos ON casos.idTipo_Caso = tipo_casos.idTipo_Casos
INNER JOIN subcasos ON casos.idCodigo_Caso = subcasos.idCodigo_Caso
INNER JOIN estado_casos ON casos.idEstado_Casos = estado_casos.idEstado_Casos
group by tipo_casos.TiposCasos_Nombre order by tipo_casos.TiposCasos_Nombre asc;







