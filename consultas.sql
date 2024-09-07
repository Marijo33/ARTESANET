-- Consulta 1: Productos con información del artesano, comunidad y categoría
SELECT p.nombre AS producto, p.descripcion AS descripcion_producto, p.precio, 
       a.descripcion AS artesano, c.nombre AS comunidad, cat.nomCat AS categoria
FROM producto p
JOIN artesano a ON p.idArtesano = a.idArtesano
JOIN comunidad c ON a.idComunidad = c.idComunidad
JOIN categoria cat ON p.idCategoria = cat.idCategoria;

-- Consulta 2: Historial de compras con detalles del comprador, carrito de compras, y transacciones
SELECT h.idHistorialCompras, u.nombre AS comprador, ca.fecha AS fecha_carrito, 
       t.montoTransaccion, t.metodo_pago
FROM historialcompras h
JOIN comprador c ON h.idComprador = c.idComprador
JOIN usuario u ON c.idComprador = u.idUsuario  -- Relación con la tabla usuario
JOIN historialcompras_carrito hc ON h.idHistorialCompras = hc.idHistorial
JOIN carritodecompra ca ON hc.idCarrito = ca.idCarrito
JOIN transaccion t ON ca.id_transaccion = t.idTransaccion
LIMIT 0, 25;


-- Consulta 3: Paquetes entregados con detalles del personal de entrega, comprador y estado del paquete
SELECT pa.idPaquete, pa.fechaPedido, pa.estado, 
       pe.tipo_vehiculo, pe.placa_vehiculo, 
       u.nombre AS comprador
FROM paquete pa
JOIN personalentrega pe ON pa.idUsuario = pe.idPersonalEntrega
JOIN comprador c ON pa.idUsuario = c.idComprador
JOIN usuario u ON c.idComprador = u.idUsuario  -- Relación con la tabla usuario
LIMIT 0, 25;


-- Consulta 4: Interacciones con el chatbot y respuestas, junto con información del comprador
SELECT ic.fecha_interaccion, ic.mensaje, ic.respuesta, 
       u.nombre AS comprador, u.email
FROM interaccioneschatbot ic
JOIN comprador c ON ic.comprador = c.idComprador
JOIN usuario u ON c.idComprador = u.idUsuario  -- Relación con la tabla usuario
LIMIT 0, 25;


-- Consulta 5: Listado de productos deseados por los compradores, junto con detalles del producto y su artesano
SELECT ld.fecha AS fecha_deseo, u.nombre AS comprador, p.nombre AS producto, 
       p.precio, a.descripcion AS artesano
FROM listadedeseo ld
JOIN comprador c ON ld.idComprador = c.idComprador
JOIN usuario u ON c.idComprador = u.idUsuario  -- Relación con la tabla usuario
JOIN listadedeseo_producto ldp ON ld.idLista = ldp.idLista
JOIN producto p ON ldp.idProducto = p.idProducto
JOIN artesano a ON p.idArtesano = a.idArtesano
LIMIT 0, 25;

