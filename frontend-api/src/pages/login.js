import React, { useState } from "react";
import { useRouter } from "react";
import swal from 'sweetalert';
import '../style/auth.css';
{/* <script type="text/jsx"></script>; */}

// function handleGetJson() {
//   console.log("inside handleGetJson");
//   fetch('./fr.json', {
//     headers : {
//       'Content-Type':'application/json',
//       'Accept':'application/json'
//     }
//   })
//   .then((response) => response.json())
//   .then((messages) => {console.log("messages");});
// }

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
            window.location.href = "/home";
          });
        } else {
          swal("Failed", response.message, "error");
        }
      }


    return (
      <div className="auth-wrapper">
          <div className="auth-inner">
      <form  method="POST" onSubmit={handleSubmit} >
         <h3>Sign In</h3>
         <div className="mb-3">
           <label>Email address</label>
           <input
             id="email"
             type="email"
             name="email"
             className="form-control"
             onChange={e => setEmail(e.target.value)}
             placeholder="Enter email"
           />
         </div>
         <div className="mb-3">
           <label>Password</label>
           <input
             id="password"
             type="password"
             name="password"
             className="form-control"
             onChange={e => setPassword(e.target.value)}
             placeholder="Enter password"
           />
         </div>
         <div className="d-grid">
           <button type="submit" className="btn btn-primary">
             Submit
           </button>
         </div>
         <p className="forgot-password text-right">
           You Don't Have Acoount? <a href="/regis">sign up</a>
         </p>
       </form> 
       </div>
       </div>
      
    )
}

//  {/* 
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
//     */}

