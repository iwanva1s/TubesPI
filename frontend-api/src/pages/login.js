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


async function loginUser(credentials) {
    return fetch('http://127.0.0.1:8000/api/login', {
      method: 'POST',
      dataType: "json",
      headers: {
        'Content-Type': 'application/json'
      },
      body: JSON.stringify(credentials)
    })
    .then(data => data.json())
}



export default function Login () {

    
    // render() {
        
    const [email, setEmail] = useState();
    const [password, setPassword] = useState();

    const handleSubmit = async e => {
        e.preventDefault();
        const response = await loginUser({
          email,
          password
        });
        console.log(response.success);
        if ('token' in response.success) {
            swal("Success", response.success.message, "success", {
              buttons: false,
              timer: 2000,
            })
          .then((value) => {
            localStorage.setItem('token', response['token']);
            localStorage.setItem('user', JSON.stringify(response['user']));
            window.location.href = "/Home2";
          });
        } else {
          swal("Failed", response.message, "error");
        }
      }


    return (
      <MDBContainer fluid className="auth-wrapper" method="POST" onSubmit={handleSubmit}>

      <MDBCard className='text-black m-5' style={{borderRadius: 'px'}}>
        <MDBCardBody>
          <MDBRow>
            <MDBCol md='10' lg='6' className='order-2 order-lg-1 d-flex flex-column align-items-center'>

              <p className="text-center h1 fw-bold mb-5 mx-1 mx-md-3 mt-5">Sign in</p>

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

              <MDBBtn className='mb-4' size='md'>Login</MDBBtn>
              <p className="forgot-password text-right">
                You Don't Have Acoount? <a href="/regis">sign up</a>
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
//   }
}

//  {/* 
//  <>
//  <form  method="POST" onSubmit={handleSubmit} >
//         <h3>Sign In</h3>
//         <div className="mb-3">
//           <label>Email address</label>
//           <input
//             id="email"
//             type="email"
//             name="email"
//             className="form-control"
//             onChange={e => setEmail(e.target.value)}
//             placeholder="Enter email"
//           />
//         </div>
//         <div className="mb-3">
//           <label>Password</label>
//           <input
//             id="password"
//             type="password"
//             name="password"
//             className="form-control"
//             onChange={e => setPassword(e.target.value)}
//             placeholder="Enter password"
//           />
//         </div>
//         <div className="d-grid">
//           <button type="submit" className="btn btn-primary">
//             Submit
//           </button>
//         </div>
//         <p className="forgot-password text-right">
//           You Don't Have Acoount? <a href="/regis">sign up</a>
//         </p>
//       </form> 
//       </> 
//     */}

