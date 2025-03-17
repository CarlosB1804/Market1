import React from 'react'
import ReactDOM from "react-dom/client";
import { BrowserRouter, Routes, Route } from "react-router-dom";
import { Header } from '../layouts/Header';
import { Footer } from '../layouts/Footer';
import { Aside } from '../layouts/Aside';
import {Home} from '../pages/Home';
import '../styles/main.scss';
import { Product } from '../pages/Product';


export const Routes1 = () => {
  return (
    <BrowserRouter>
    <Header/>
    <section className='Seccion_Principal'>
    <Routes>
      <Route path='/' element={<Home/>}></Route>
      <Route path='/inicio' element={<Home/>}></Route>
      <Route path='/producto' element={<Product/>}></Route>
    </Routes>
      <Aside/>
    </section> 
    <Footer/>
    </BrowserRouter>
  )
}
