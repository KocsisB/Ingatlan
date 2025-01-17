import { Route, Routes } from 'react-router-dom';
import  './App.css';
import Fiok from './Fiok';
import Hirdetes from './Hirdetes';
import Kollegak from './Kollegak';
import Munkatarsak from './Munkatarsak';
import SignUp from './SignUp';
import Navbar from './Navbar';
import Fooldal from './Fooldal';

function App() {
  return (
    <div className='App'>
      <Navbar/>
      <Routes>
        <Route path='/' element={<Fooldal/>}/>
        <Route path='/fiok' element={<Fiok/>}/>
        <Route path='/hirdetes' element={<Hirdetes/>}/>
        <Route path='/kollegak' element={<Kollegak/>}/>
        <Route path='/munkatarsak' element={<Munkatarsak/>}/>
        <Route path='/bejelentkezes' element={<SignUp/>}/>
      </Routes>        

    </div>
  );
}

export default App;
