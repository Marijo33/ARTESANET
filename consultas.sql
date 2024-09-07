-- Consulta 1: Obtener todos los artesanos registrados en la plataforma
SELECT * FROM artesanos;

-- Consulta 2: Listar todos los compradores y sus correos electrónicos
SELECT nombre, correo_electronico FROM usuarios
WHERE rol = 'comprador';

-- Consulta 3: Mostrar todos los productos disponibles en una categoría específica (ej. 'cerámica')
SELECT * FROM productos
WHERE categoria = 'cerámica';

-- Consulta 4: Obtener todas las ferias de artesanía que ocurren en un año específico (ej. 2024)
SELECT * FROM ferias
WHERE anio_evento = 2024;

-- Consulta 5: Mostrar el historial de pedidos de un usuario específico (por su ID)
SELECT * FROM pedidos
WHERE id_usuario = 15;
