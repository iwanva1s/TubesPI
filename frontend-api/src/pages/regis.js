import React, { useState } from "react";
import { useRouter } from "react";
import swal from 'sweetalert';
import '../style/auth.css';
import hewans from "../img/hewans.png";

import {
  MDBBtn,
  MDBContainer,
  MDBRow,
  MDBCol,
  MDBCard,
  MDBCardBody,
  MDBCardImage,
  MDBInput,
  MDBIcon,
}
from 'mdb-react-ui-kit';

async function RegistUser(credentials) {
  return fetch('http://127.0.0.1:8000/api/register', {
    method: 'POST',
    dataType: "json",
    headers: {
      'Content-Type': 'application/json'
    },
    body: JSON.stringify(credentials)
  })
  .then(data => data.json())
}

export default function Regis () {
  
  const [name, setName] = useState();
  const [email, setEmail] = useState();
  const [password, setPassword] = useState();

  const handleSubmit = async e => {
    e.preventDefault();
    const response = await RegistUser({
      name,
      email,
      password
    });
    console.log(response);
    if ('token' in response.success) {
        swal("Success", response.success.message, "success", {
          buttons: true,
          timer: 2000,
        })
      .then((value) => {
        localStorage.setItem('token', response['token']);
        localStorage.setItem('user', JSON.stringify(response['user']));
        window.location.href = "/";
      });
    } else {
      swal("Failed", response.message, "error");
       }
      }

  // render() {
    return (
      // <form method="POST" onSubmit={handleSubmit} >
      //   <h3>Sign Up</h3>
      //   <div className="mb-3">
      //     <label>Name</label>
      //     <input
      //       id ="name"
      //       type="name"
      //       name="name"
      //       className="form-control"
      //       onChange={e => setName(e.target.value)}
      //       placeholder="Name"
      //     />
      //   </div>
      //   <div className="mb-3">
      //     <label>Email</label>
      //     <input
      //       id="email"
      //       type="email"
      //       name="email"
      //       className="form-control"
      //       onChange={e => setEmail(e.target.value)}
      //       placeholder="Enter email"
      //     />
      //   </div>
      //   <div className="mb-3">
      //     <label>Password</label>
      //     <input
      //       id="password"
      //       type="password"
      //       name="password"
      //       className="form-control"
      //       onChange={e => setPassword(e.target.value)}
      //       placeholder="Enter password"
      //     />
      //   </div>
      //   <div className="d-grid">
      //     <button type="submit" className="btn btn-primary">
      //       Sign Up
      //     </button>
      //   </div>
      //   <p className="forgot-password text-right">
      //     Already registered <a href="/login">sign in?</a>
      //   </p>
      // </form>

      //New Template
      <MDBContainer fluid className="auth-wrapper" method="POST" onSubmit={handleSubmit}>

      <MDBCard className='text-black m-5' style={{borderRadius: 'px'}}>
        <MDBCardBody>
          <MDBRow>
            <MDBCol md='10' lg='6' className='order-2 order-lg-1 d-flex flex-column align-items-center'>

              <p className="text-center h1 fw-bold mb-5 mx-1 mx-md-3 mt-5">Sign up</p>

              <div className="d-flex flex-row align-items-center mb-4 ">
                <MDBIcon fas icon="user me-3" size='lg'/>
                <MDBInput 
                label='Full Name' 
                id ="name"
                type="name"
                name="name"
                onChange={e => setName(e.target.value)}
                placeholder="Name" 
                className='w-100'/>
              </div>

              <div className="d-flex flex-row align-items-center mb-4">
                <MDBIcon fas icon="envelope me-3" size='lg'/>
                <MDBInput 
                label='Email Address' 
                id="email"
                type="email"
                name="email"
                onChange={e => setEmail(e.target.value)}
                placeholder="Enter email"/>
              </div>

              <div className="d-flex flex-row align-items-center mb-4">
                <MDBIcon fas icon="lock me-3" size='lg'/>
                <MDBInput 
                label='Password' 
                id="password"
                type="password"
                name="password"
                className="form-control"
                onChange={e => setPassword(e.target.value)}
                placeholder="Enter password"/>
              </div>

              <MDBBtn className='mb-4' size='md'>Register</MDBBtn>
              <p className="forgot-password text-right">
                Already registered <a href="/login">sign in?</a>
             </p>

            </MDBCol>

            <MDBCol md='10' lg='6' className='order-1 order-lg-2 d-flex align-items-center'>
              <MDBCardImage src={hewans} fluid/>
            </MDBCol>

          </MDBRow>
        </MDBCardBody>
      </MDBCard>

    </MDBContainer>
    )
  // }
}