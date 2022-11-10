import './App.css';
import { useState, useEffect } from 'react';
import { Routes, Route } from "react-router-dom";
import NavBar from "./components/NavBar";
import LogIn from './components/LogIn';
import SignUp from './components/SignUp';
import Home from './components/Home';

function App() {
  const [currentUser, setCurrentUser] = useState(false);

  useEffect(() => {
    fetch("/me").then((res) => {
      if (res.ok) {
        res.json().then((userData) => setCurrentUser(userData));
      } else {
        res.json().then((json) => console.log(json.errors));
      }
    });
  }, []);

  const updateUser = (user) => {
    setCurrentUser(user);
  };
  
  return (
    <div className="App">
      <NavBar />
      <Routes>
        <Route path="/" element={<Home />}/>
        <Route path='/signup' element={<SignUp />}/>
        <Route path="/login" element={<LogIn updateUser={updateUser}/>}/>
      </Routes>
    </div>
  );
}

export default App;
