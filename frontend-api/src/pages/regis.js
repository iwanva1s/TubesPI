import React, { useState } from "react";
import { useRouter } from "react";
import swal from 'sweetalert';
import '../style/auth.css';


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

  
    return (
      <div className="auth-wrapper">
          <div className="auth-inner">
      <form method="POST" onSubmit={handleSubmit} >
        <h3>Sign Up</h3>
        <div className="mb-3">
          <label>Name</label>
          <input
            id ="name"
            type="name"
            name="name"
            className="form-control"
            onChange={e => setName(e.target.value)}
            placeholder="Name"
          />
        </div>
        <div className="mb-3">
          <label>Email</label>
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
            Sign Up
          </button>
        </div>
        <p className="forgot-password text-right">
          Already registered <a href="/login">sign in?</a>
        </p>
       
      </form>
      </div>
        </div>

    )

}