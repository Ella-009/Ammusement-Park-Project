import React, { useContext, useState }  from 'react'; 
import { Link } from 'react-router-dom';
import { Button, Checkbox, Form, Input, Alert } from 'antd';
import axios from 'axios';
import AppContext from '../../AppContext';

const onFinish = (values) => {
    console.log('Success:', values);
}; 

const onFinishFailed = (errorInfo) => {
    console.log('Failed:', errorInfo);
}; 

const headers = { 'Content-Type': 'application/json', credentials: 'include'}; 

export default function UserLogin() {
    const [email, setEmail] = useState(''); 
    const [password, setPassword] = useState(''); 
    const myContext = useContext(AppContext); 
    const [alertMsg, setAlertMsg] = useState(''); 
    const [showAlert, setShowAlert] = useState(false); 

    function handleEmail(e) { 
        setEmail(e.target.value.trim())
    }

    function handlePassword(e) {
        setPassword(e.target.value.trim())
    }

    function handleSubmit() { 
        const body = JSON.stringify({
            accEmail: email, 
            accPwd: password, 
        })
        axios.post('http://localhost:8080/account/login', body, {headers})
        .then(response => response.data)
        .then(data => {
            console.log("login!"); 
            if (data.success === true) {
                //get role
                axios.get('http://localhost:8080/account/getrole')
                .then(response => response.data)
                .then(data => {
                    console.log("get role!"); 
                    if (data.data === 'admin') {
                        setAlertMsg('Please use the admin portal to login!');
                        setShowAlert(true); 
                    } else {
                        setShowAlert(false); 
                        myContext.setLogin(true); 
                        sessionStorage.setItem("login", true);
                    }
                })
            } else { 
                setAlertMsg('The account email and password do not match!');
                setShowAlert(true); 
            }
        });
    }

    return (
        <div style={{display: 'felx', flexDirection: 'column', alignItems: 'center', marginBottom: '10%'}}>
        <img src={require('../../logo.png')} style={{width:'15%',height:'15%',margin:'5%'}}/>
        <Form
            name="basic"
            labelCol={{ span: 5 }}
            wrapperCol={{ span: 16 }}
            style={{ width: '80%', marginLeft: '10%'}}
            initialValues={{ remember: true }}
            onFinish={onFinish}
            onFinishFailed={onFinishFailed}
            autoComplete="off"
        >
            <Form.Item
            label="Email"
            name="email"
            rules={[{ required: true, message: 'Please input your email!' }]}
            >
            <Input onChange={handleEmail}/>
            </Form.Item>

            <Form.Item
            label="Password"
            name="password"
            rules={[{ required: true, message: 'Please input your password!' }]}
            >
            <Input.Password onChange={handlePassword}/>
            </Form.Item>
        </Form>
        <Button type="primary" htmlType="submit" onClick={handleSubmit}>
            Submit
        </Button>
        {
            showAlert && (
            <Alert
                message="Error"
                description={alertMsg}
                type="error"
                showIcon 
                style = {{width: '30%', marginLeft: '35%', marginTop: '2%', marginBottom: '2%'}}
            />)
        }
        <div style ={{marginTop: '2%'}}>
            <Link to = '/adminlogin'>Admin Login</Link>
        </div>
        </div>
    );
    
}