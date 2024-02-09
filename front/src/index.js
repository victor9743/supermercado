import React from 'react';
import ReactDOM from 'react-dom/client';
import { Home } from './components/Home';
import { Produtos } from './components/Produtos';
import { BrowserRouter, Routes, Route } from 'react-router-dom';

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <BrowserRouter>
    <Routes>
      <Route path="/" element={<Home />} />
      <Route path="/produtos/cadastrar" element={<Produtos />} />
    </Routes>
  </BrowserRouter>
);
