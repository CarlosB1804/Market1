import React from 'react'
import { NavLink } from 'react-router-dom'
import react from '../assets/react.svg'
import '../styles/Header.scss'
export const Header = () => {
  return (
    <div className='Header'>
       <div className='Header_img'>
            <img src={react} alt="" />
       </div>
       <nav className='Header_elements'>
        <ul>
          <li>
            <NavLink to="/">Inicio</NavLink>
          </li>
          <li>
            <NavLink to="/producto">Registrar Producto</NavLink>
          </li>
        </ul>
       </nav>
    </div>
  )
}
