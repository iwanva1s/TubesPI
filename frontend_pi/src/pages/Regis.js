import React, { useState } from "react";
import swal from 'sweetalert';


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
    console.log(response.success.token);
    if ('token' in response.success) {
        swal("Success", response.success.message, "success", {
          buttons: true,
          timer: 2000,
        })
      .then((value) => {
        localStorage.setItem('token', response.success.token);
        localStorage.setItem('user', JSON.stringify(response.success.user));
        window.location.href = "/";
      });
    } else {
      swal("Failed", response.message, "error");
      }
      }

  
    return (
        <div class="min-h-screen bg-gray-100 flex flex-col justify-center py-12 sm:px-6 lg:px-8">
    <div class="sm:mx-auto sm:w-full sm:max-w-md">
        <h2 class="mt-6 text-center text-3xl font-extrabold text-gray-900">
            Sign up to your account
        </h2>
        <p class="mt-2 text-center text-sm text-gray-600 max-w">
            Or 
            <a href="/login" class="font-medium text-indigo-500 hover:text-indigo-600"> login to your account
            </a>
        </p>
    </div>

    <div class="mt-8 sm:mx-auto sm:w-full sm:max-w-md">
        <div class="bg-white py-8 px-4 shadow sm:rounded-lg sm:px-10">
            <form class="space-y-6" action="" method="POST" onSubmit={handleSubmit}>
            <div>
                    <label for="name" class="block text-sm font-medium text-gray-700">
                        Name
                    </label>
                    <div class="mt-1">
                        <input id="name" name="name" type="name" onChange={e => setName(e.target.value)} required
                            class="appearance-none rounded-md relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm"
                            placeholder="Enter your name"/>
                    </div>
                </div>

                <div>
                    <label for="email" class="block text-sm font-medium text-gray-700">
                        Email address
                    </label>
                    <div class="mt-1">
                        <input id="email" name="email" type="email" autocomplete="email" onChange={e => setEmail(e.target.value)} required
                            class="appearance-none rounded-md relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm"
                            placeholder="Enter your email address"/>
                    </div>
                </div>

                <div>
                    <label for="password" class="block text-sm font-medium text-gray-700">
                        Password
                    </label>
                    <div class="mt-1">
                        <input id="password" name="password" type="password" autocomplete="current-password" onChange={e => setPassword(e.target.value)} required
                            class="appearance-none rounded-md relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm"
                            placeholder="Enter your password"/>
                    </div>
                </div>

                <div>
                    <button type="submit"
                        class="group relative w-full flex justify-center py-2 px-4 border border-transparent text-sm font-medium rounded-md text-white bg-indigo-500 hover:bg-indigo-600 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">

                        Sign Up
                    </button>
                </div>
            </form>
            <div class="mt-6">

                </div>
        </div>
    </div>
</div>

    //   <div className="auth-wrapper">
    //       <div className="auth-inner">
    //   <form method="POST" onSubmit={handleSubmit} >
    //     <h3>Sign Up</h3>
    //     <div className="mb-3">
    //       <label>Name</label>
    //       <input
    //         id ="name"
    //         type="name"
    //         name="name"
    //         className="form-control"
    //         onChange={e => setName(e.target.value)}
    //         placeholder="Name"
    //       />
    //     </div>
    //     <div className="mb-3">
    //       <label>Email</label>
    //       <input
    //         id="email"
    //         type="email"
    //         name="email"
    //         className="form-control"
    //         onChange={e => setEmail(e.target.value)}
    //         placeholder="Enter email"
    //       />
    //     </div>
    //     <div className="mb-3">
    //       <label>Password</label>
    //       <input
    //         id="password"
    //         type="password"
    //         name="password"
    //         className="form-control"
    //         onChange={e => setPassword(e.target.value)}
    //         placeholder="Enter password"
    //       />
    //     </div>
    //     <div className="d-grid">
    //       <button type="submit" className="btn btn-primary">
    //         Sign Up
    //       </button>
    //     </div>
    //     <p className="forgot-password text-right">
    //       Already registered <a href="/login">sign in?</a>
    //     </p>
       
    //   </form>
    //   </div>
    //     </div>

    )

}