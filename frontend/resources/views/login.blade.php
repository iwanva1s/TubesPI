<div class="modal fade" id="loginModal" tabindex="-1">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title fs-5" id="exampleModalLabel">
        Login</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" data-bs-target="#LoginModal" aria-label="Close"></button>
      </div>

      <div class="modal-body" id="LoginModal">
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