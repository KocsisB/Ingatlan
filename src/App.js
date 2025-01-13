import Fiok from './Fiok';
import Hirdetes from './Hirdetes';
import Kollegak from './Kollegak';
import Munkatarsak from './Munkatarsak';
import SignUp from './SignUp';
import Fooldal from './Fooldal';
import { Route, Routes } from 'react-router-dom';
import  './App.css';
import Navbar from './Navbar';

function App() {
  return (
    <div>
      <Navbar/>
    <Routes>
      <Route path='/fiok' element={<Fiok/>}></Route>
      <Route path='/hirdetes' element={<Hirdetes/>}></Route>
      <Route path='/kollegak' element={<Kollegak/>}></Route>
      <Route path='/munkatarsak' element={<Munkatarsak/>}></Route>
      <Route path='/bejelentkezes' element={ <SignUp/>}></Route>
    </Routes>        

    </div>
    
  );
}

export default App;
