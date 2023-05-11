import React from 'react';
import { useContext } from 'react';
import { Link, NavLink } from 'react-router-dom'
import AppContext from '../../AppContext';

const Navbar = ({admin}) => { 
    const myContext = useContext(AppContext); 
    return (
        <nav style={{display:'flex',alignItems:'center',height:100, alignSelf:'center',borderBottomWidth:2, borderBottomColor:'white',justifyItems:'center', backgroundColor:'#282c34'}}>
        <div style={{display:'flex'}}>
            <Link to="/" >
            <img src={require('./../../logo.png')} style={{width:76,height:76,margin:10}}/>
            </Link>
            
            {
                !admin 
                &&
                <ul style={{display:'flex',listStyle:'none', width: '100%'}}>
                    <li style={{color: 'white',textDecoration:'none', fontSize:'130%', marginRight:'5%', marginTop: 20}}><Link to="/" style={{color: 'white',textDecoration:'none'}}>Home</Link></li>
                    <li style={{color: 'white',textDecoration:'none', fontSize:'130%', marginRight:'5%', marginTop: 20}}><NavLink to="/attractions" style={{color: 'white',textDecoration:'none'}}>Attractions</NavLink></li>
                    <li style={{color: 'white',textDecoration:'none', fontSize:'130%', marginRight:'5%', marginTop: 20}}><NavLink to="/stores" style={{color: 'white',textDecoration:'none'}}>Stores</NavLink></li>
                    <li style={{color: 'white',textDecoration:'none', fontSize:'130%', marginRight:'5%', marginTop: 20}}><NavLink to="/shows" style={{color: 'white',textDecoration:'none'}}>Shows</NavLink></li>
                    <li style={{color: 'white',textDecoration:'none', fontSize:'130%', marginRight:'5%', marginTop: 20}}><NavLink to="/book" style={{color: 'white',textDecoration:'none'}}>Book Tickets</NavLink></li>
                    <li style={{color: 'white',textDecoration:'none', fontSize:'130%', marginRight:'5%', marginTop: 20}}><NavLink to="/orders" style={{color: 'white',textDecoration:'none'}}>Orders</NavLink></li>
                    <li style={{color: 'white',textDecoration:'none', fontSize:'130%', marginRight:'5%', marginTop: 20}}><NavLink to="/profile" style={{color: 'white',textDecoration:'none'}}>Profile</NavLink></li>
                </ul>
            }

            {
                admin 
                &&
                <ul style={{display:'flex',listStyle:'none'}}>
                    <li style={{color: 'white',textDecoration:'none', fontStyle: 'bold', fontSize: '150%', marginTop:15}}><NavLink to="/admin" style={{color: 'white',textDecoration:'none'}}>Welcome, Admin!</NavLink></li>
                    <li style={{color: 'white',textDecoration:'none', fontStyle: 'bold', fontSize: '150%', marginTop:15}}>
                        <NavLink to="/" style={{color: 'white',textDecoration:'none'}}>
                        <label onClick={handleClick}>Log out</label>
                        </NavLink>
                    </li>
                </ul>
            }
        </div>
        </nav>
    );

    function handleClick() {
        myContext.setLogin(false); 
        myContext.setAdmin(false);
        sessionStorage.setItem("login", false); 
    }
};

export default Navbar;