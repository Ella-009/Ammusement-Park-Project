import React, { useContext, useEffect, useState }  from 'react'; 
import { useNavigate } from 'react-router-dom';
import { Button } from 'antd';
import './Profile.css'; 
import axios from 'axios'; 
import AppContext from '../../AppContext';

const space = ' ';
export default function Profile() {
    const myContext = useContext(AppContext); 
    const navigate = useNavigate(); 
    const [profile, setProfile] = useState(null); 

    useEffect(() => {
        axios.get('http://localhost:8080/account/profile')
        .then(response => response.data)
        .then(data => { 
            setProfile(data.data); 
        })
    }, []);

    useEffect(() => {
        console.log("get profile: " + profile); 
    }, [])

    function handleLogout() {
        myContext.setLogin(false);
        sessionStorage.setItem("login", false); 
        navigate("/");
        window.location.reload();
    }

    return (
    <div className='layout'>
        <h2 style={{color: '#1C468E'}}>My Profile</h2>
        {
            profile !== null && <div className='box'>
                <div className='infoBox'>
                    <div className='info'>Account Email: {profile.accEmail}</div>
                </div>
                <div className='infoBox'>
                    <div className='info'>Full name: {profile.vfname} {profile.vmname} {profile.vlname}</div> 
                </div>
                <div className='infoBox'>
                    <div className='info'>Full address: {profile.vstAdd}, {profile.vcity}, {profile.vstate}, {profile.vcountry}</div> 
                </div>
                <div className='infoBox'>
                    <div className='info'>Birth Date: {profile.vbdate.substring(0, 10)}</div>
                </div>
                <div className='infoBox'>
                    <div className='info'>Tel Number: {profile.vtelNum}</div>
                </div>
                <div className='infoBox'>
                    <div className='info'>Visitore Type: </div> 
                    {
                        profile.vtype === 'I' && <div className='info'> Individual</div>  
                    }
                    {
                        profile.vtype === 'S' && <div className='info'> Student</div>  
                    }
                    {
                        profile.vtype === 'G' && <div className='info'> Group</div>  
                    }
                    {
                        profile.vtype === 'M' && <div className='info'> Member</div>  
                    }
                </div>
                {
                    profile.vtype === 'I' && 
                    <div className='infoBox'>
                        <div className='info'>Visit Times: {profile.itimesVisit}</div>
                    </div>
                }
                {
                    profile.vtype === 'S' && 
                    <div className='infoBox'>
                        <div className='info'>School: {profile.stuSchool}</div>
                    </div>
                }
                {
                    profile.vtype === 'G' && 
                    <div className='infoBox'>
                        <div className='info'>Group Size: {profile.gsize}</div>
                    </div>
                }
                {
                    profile.vtype === 'M' && <>
                        <div className='infoBox'>
                            <div className='info'>Available Member Count: {5 - profile.mnumPurchased}</div>
                        </div>
                        <div className='infoBox'>
                            <div className='info'>Member Start Date: {profile.mstartDate.substring(0, 10)}</div>
                        </div>
                        <div className='infoBox'>
                            <div className='info'>Member End Date: {profile.mendDate.substring(0, 10)}</div>
                        </div>
                    </>
                }
            </div>
        }
        <Button style = {{marginTop: '2%'}} onClick={handleLogout}>Log out</Button>
    </div>);
}
