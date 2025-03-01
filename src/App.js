import { Route, Routes } from 'react-router-dom';
import  './App.css';
import Hirdetes from './Hirdetes';
import Kollegak from './Kollegak';
import Navbar from './Navbar';
import Fooldal from './Fooldal';
import Login from './Login';
import Footer from './Footer';
import Eladohaz from './Eladohaz';
import Berelhetohaz from './Berelhetohaz';
import Munkatarsaink from './Munkatarsaink';
import HazModositas from './HazModositas';
import SignUp from './SignUp';

function App() {
  return (
    <div className='App'>
      <Navbar/>
      <Routes>
        <Route path='/' element={<Fooldal/>}/>
        <Route path='/hirdetes' element={<Hirdetes/>}/>
        <Route path='/kollegak' element={<Kollegak/>}/>
        <Route path='/bejelentkezes' element={<Login/>}/>
        <Route path='/regisztracio' element={<SignUp/>}/>
        <Route path='/eladohazak' element={<Eladohaz/>}/>
        <Route path='/berelhetohazak' element={<Berelhetohaz/>}/>
        <Route path='/ugynokok' element={<Munkatarsaink/>}/>
        <Route path='/hazmodositas/:id' element={<HazModositas/>}/>
      </Routes>   
      <Footer/>     

    </div>
  );
}

export default App;
