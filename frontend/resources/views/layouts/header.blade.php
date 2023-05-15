  <!-- Responsive navbar-->
  <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
            <div class="container">
                <a class="navbar-brand" href="#!"><span class="text-warning">Livestock</span>API</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                          <a class="nav-link active" href="#about">About</a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" href="#service">Service</a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" href="#team">Team</a>
                        </li>
                    </ul>
                       <div class="dropdown ms-auto mb-2 mb-lg-0">
                <button class="btn btn-white dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                             Akun
                  </button>
                        <ul class="dropdown-menu ">
                           <li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#LoginModal" >Login</a></li>
                           <li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#RegisterModal" >Register</a></li>
                        </ul>
                      </div>
                </div>
            </div>
        </nav>
        <!-- Header-->
        <!-- <header class="bg-light py-5">
            <div class="container px-5">
                <div class="row gx-5 justify-content-center">
                    <div class="col-lg-6">
                        <div class="text-center my-5">
                            <h1 class="display-5 fw-bolder text-black mb-2">Present your business in a whole new way</h1>
                            <p class="lead text-black-50 mb-4">Quickly design and customize responsive mobile-first sites with Bootstrap, the world’s most popular front-end open source toolkit!</p>
                            <div class="d-grid gap-3 d-sm-flex justify-content-sm-center">
                                <a class="btn btn-secondary btn-lg px-4 me-sm-3" href="#documentation">Documentation</a>
                                <a class="btn btn-secondary btn-lg px-4 me-sm-3" href="#api">API Use</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header> -->
 
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

