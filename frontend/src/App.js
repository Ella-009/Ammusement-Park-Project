import { useEffect, useState , useContext } from 'react';
import { BrowserRouter, Route, Routes, Navigate } from 'react-router-dom'

import Navbar from './components/Navbar/Navbar';
import Home from './components/Navbar/Home';
import Attractions from './components/Navbar/Attractions';
import Stores from './components/Navbar/Stores';
import Shows from './components/Navbar/Shows';
import Profile from './components/Account/Profile';
import MyOrders from './components/Navbar/MyOrders';
import BookTickets from './components/Navbar/BookTickets';
import AdminProfile from './components/Navbar/Admin';
import UserLogin from './components/Account/UserLogin';
import AdminLogin from './components/Account/AdminLogin';

import './App.css';
import AppContext from './AppContext';
import axios from 'axios'; 

axios.defaults.withCredentials = true; 

function App() {
    const [login,setLogin] = useState(false);
    const [admin,setAdmin] = useState(false);
    const myContext = useContext(AppContext);

    const userSettings = {
      loginname:login, 
      adminname:admin,
      setLogin,
      setAdmin, 
    };

    useEffect(() => {
      console.log("refresh")
    }, [login])

  return ( 
  <AppContext.Provider value={userSettings}>
  <BrowserRouter>
  <div className="App">
      {
        console.log("login status: " + sessionStorage.getItem("login"))
      }
      {
          (sessionStorage.getItem("login") === null || sessionStorage.getItem("login") === "false") && 
          <div>
            {
              console.log(1)
            }
              <Routes>
                    <Route path="/" element={<Navigate to ="/userlogin" />}/>
                    <Route exact path="/userlogin" element={<UserLogin />}/>
                    <Route exact path="/adminlogin" element={<AdminLogin/>}/>
              </Routes>
          </div>
      }
      {
          (sessionStorage.getItem("login") === "true"  && !admin) && 
          <div>
            {
              console.log(2)
            }
              <Navbar admin={admin}/>
              <Routes>
                  <Route exact path="/" element={<Home/>}/>
                  <Route exact path="/attractions" element={<Attractions/>}/>
                  <Route exact path="/stores" element={<Stores/>} />
                  <Route exact path="/shows" element={<Shows/>} />
                  <Route exact path="/book" element={<BookTickets/>} />
                  <Route exact path="/orders" element={<MyOrders/>} />
                  <Route exact path="/profile" element={<Profile/>} />
                  <Route exact path="/userlogin" element={<Navigate to ="/" />} />
              </Routes>
          </div>
        }

        {
            (sessionStorage.getItem("login") === "true" && admin) &&
            <div>
              {
                console.log(3)
              }
                <Navbar admin={admin}/>
                <Routes>
                    <Route path="/adminlogin" element={<Navigate to ="/admin" />}/>
                    <Route exact path="/admin" element={<AdminProfile/>} />
                </Routes>
            </div>
        }
    </div>
    </BrowserRouter>
    </AppContext.Provider>
  );
} 

export default App;
