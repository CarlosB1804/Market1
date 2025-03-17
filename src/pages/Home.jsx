import React, { useEffect, useState } from 'react';
import { Swiper, SwiperSlide } from 'swiper/react';
import 'swiper/css';
import 'swiper/css/grid';
import 'swiper/css/pagination';
import '../styles/Home.css';
import { Grid, Pagination } from 'swiper/modules';
import { obtenerProductos } from '../helpers/Peticion'; 

export const Home = () => {
  const [productos, setProductos] = useState([]);
  const [mensaje, setMensaje] = useState('');

  useEffect(() => {
    obtenerProductos()
      .then(data => {
        if (data.productos) {
          setProductos(data.productos);
        } else {
          setMensaje(data.mensaje);
        }
      })
      .catch(error => {
        console.error('Error al obtener productos:', error);
        setMensaje('Error interno del servidor');
      });
  }, []);

  return (
    <div className='Home'>
      {mensaje && <p>{mensaje}</p>}
      <Swiper
        slidesPerView={3}
        grid={{
          rows: 2,
        }}
        spaceBetween={30}
        pagination={{
          clickable: true,
        }}
        modules={[Grid, Pagination]}
        className="mySwiper"
      >
        {productos.map(producto => (
          <SwiperSlide key={producto.id_producto}>
            <div>
              <h3>{producto.nombre}</h3>
              <p>{producto.descripcion}</p>
              <p>Precio: {producto.precio}</p>
              {producto.image && <img src={`data:image/jpeg;base64,${producto.image}`} alt={producto.name} />}
            </div>
          </SwiperSlide>
        ))}
      </Swiper>
    </div>
  );
};