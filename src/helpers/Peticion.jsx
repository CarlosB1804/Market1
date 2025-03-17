const URL = 'http://localhost:5002';

export const obtenerProductos = async () => {
  try {
    const response = await fetch(`${URL}/productos`);
    const data = await response.json();
    return data;
  } catch (error) {
    console.error('Error al obtener productos:', error);
    throw error;
  }
};

export const obtenerProductoPorId = async (productoId) => {
  try {
    const response = await fetch(`${URL}/productos/${productoId}`);
    const data = await response.json();
    return data;
  } catch (error) {
    console.error('Error al obtener producto:', error);
    throw error;
  }
};

export const agregarProducto = async (producto) => {
  try {
    const response = await fetch(`${URL}/productos`, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json'
      },
      body: JSON.stringify(producto)
    });
    const data = await response.json();
    return data;
  } catch (error) {
    console.error('Error al agregar producto:', error);
    throw error;
  }
};