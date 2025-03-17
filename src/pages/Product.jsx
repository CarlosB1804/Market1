import React, { useState } from 'react';
import '../styles/Product.scss';
import { agregarProducto } from '../helpers/Peticion';  

export const Product = () => {
  const [nombre, setNombre] = useState('');
  const [precio, setPrecio] = useState('');
  const [descripcion, setDescripcion] = useState('');
  const [imagen, setImagen] = useState('');
  const [mensaje, setMensaje] = useState('');

  const handleSubmit = async (e) => {
    e.preventDefault();

    const producto = {
      nombre: nombre,
      precio: parseFloat(precio),
      descripcion: descripcion,
      image: imagen
    };

    try {
      const data = await agregarProducto(producto);
      setMensaje(data.mensaje || data.error);
    } catch (error) {
      console.error('Error al agregar producto:', error);
      setMensaje('Error interno del servidor');
    }
  };

  return (
    <div className="product-form">
      <form onSubmit={handleSubmit}>
        <div className="form-group">
          <label htmlFor="nombre">Nombre</label>
          <input type="text" id="nombre" value={nombre} onChange={(e) => setNombre(e.target.value)} required />
        </div>
        <div className="form-group">
          <label htmlFor="precio">Precio</label>
          <input type="number" id="precio" value={precio} onChange={(e) => setPrecio(e.target.value)} required />
        </div>
        <div className="form-group">
          <label htmlFor="descripcion">Descripción</label>
          <input type="text" id="descripcion" value={descripcion} onChange={(e) => setDescripcion(e.target.value)} required />
        </div>
        <div className="form-group">
          <label htmlFor="imagen">Imagen (Base64)</label>
          <input type="text" id="imagen" value={imagen} onChange={(e) => setImagen(e.target.value)} required />
        </div>
        <button type="submit">Agregar Producto</button>
      </form>
      {mensaje && <p className="mensaje">{mensaje}</p>}
    </div>
  );
    
};