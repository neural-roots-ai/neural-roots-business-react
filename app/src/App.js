import React from "react";
import { BrowserRouter } from "react-router-dom";
import './styles/MainStyle.css';
import './index.css'
import 'bootstrap/dist/css/bootstrap.min.css';
import ContactLayout from "./layout/ContactLayout";
import AboutLayout from "./layout/AboutLayout";
import ServiceLayout from "./layout/ServiceLayout";
import HeroLayout from "./layout/HeroLayout";
import NavbarLayout from "./layout/NavbarLayout";

function App() {
  return(
    < BrowserRouter>
      <React.Fragment>
        <NavbarLayout />
        <HeroLayout />
        <AboutLayout />
        <ServiceLayout />
        <ContactLayout />
      </React.Fragment>
    </BrowserRouter>
)};

export default App;