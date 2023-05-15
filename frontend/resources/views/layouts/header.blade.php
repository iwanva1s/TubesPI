  <!-- Responsive navbar-->


  
<section class="header">
  <div class="container">

  <nav class="navbar navbar-expand-lg navbar-dark fixed-top">
  <div class="container-fluid">
  <a class="navbar-brand" href="/app">Livestock API</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav">
          <li class="nav-item">
               <a class="nav-link act" href="#about">About</a>
           </li>
                        <li class="nav-item">
                          <a class="nav-link act" href="#service">Service</a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link act" href="#team">Team</a>
                        </li>
                    </ul>
                    <div class="dropdown ms-auto mb-2 mb-lg-0">
                         <button class="btn btn-white dropdown-toggle text-white" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                             Akun
                       </button>
                        <ul class="dropdown-menu">
                           <li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#LoginModal" >Login</a></li>
                           <li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#RegisterModal" >Register</a></li>
                        </ul>
                       </div>
              
      </ul>
      
    </div>
  </div>
</nav>

    <div class="middle">
      <h1 class="text-white fw-bold display-3">We Help you to find <span class="theme-text">a Livestock in Indonesia</span></h1>
    </div>

  </div>
  <svg class="wave" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320">
    <path fill="#fff" fill-opacity="1" d="M0,128L48,128C96,128,192,128,288,154.7C384,181,480,235,576,240C672,245,768,203,864,192C960,181,1056,203,1152,208C1248,213,1344,203,1392,197.3L1440,192L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z">
  </path>
</svg>
</section>

        <!-- LoginModal -->
        <div class="modal fade" id="LoginModal" tabindex="-1">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title fs-5" id="LoginModal">
                Login</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
              </div>

              <div class="modal-body" id="">
                <form action="">
                    <div class="mb-3">
                        <label for="input-email" class="form-label">Email address</label>
                            <input ref={inputEmail} type="email" class="form-control" id="input-email"/>
                    </div>
                    
                    <div class="mb-3">
                        <label for="input-password" class="form-label">Password</label>
                            <input ref={inputPassword} type="password" class="form-control" id="input-password"/>
                    </div>
                </form>
              </div>

              <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" onClick={handleLogin}>Login</button>
              </div>
            </div>
          </div>
        </div>

          <!-- RegisterModal -->
          <div class="modal fade" id="RegisterModal" tabindex="-1">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title fs-5" id="RegisterModal">
                Register</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
              </div>

              <div class="modal-body" id="">
                <form action="">
                <div class="mb-3">
                        <label for="input-name" class="form-label">Name</label>
                            <input ref={inputName} type="text" class="form-control" id="input-name"/>
                    </div>

                    <div class="mb-3">
                        <label for="input-email" class="form-label">Email address</label>
                            <input ref={inputEmail} type="email" class="form-control" id="input-email"/>
                    </div>
                    
                    <div class="mb-3">
                        <label for="input-password" class="form-label">Password</label>
                            <input ref={inputPassword} type="password" class="form-control" id="input-password"/>
                    </div>
                </form>
              </div>

              <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" onClick={handleLogin}>Register</button>
              </div>
            </div>
          </div>
        </div>

      

