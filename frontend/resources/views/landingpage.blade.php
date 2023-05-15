<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css" href="css/styles.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
  <title>Livestock API</title>


</head>

<body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>    


    @section('header')
        @include('layouts.header')

    @show

    <div id="carouselExampleCaptions" class="carousel slide">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
         <img src="img/sapi.jpg" class="d-block w-100" alt="...">
             <div class="carousel-caption">
                 <h5>API Documentation</h5>
                 <p>API Documentation placeholder content for the first slide</p>
                 <p><a href="#" class="btn btn-warning mt-3">API Documentation</a></p>             
             </div>
        </div>
        <div class="carousel-item">
          <img src="img/ayam.jpeg" class="d-block w-100" alt="...">
             <div class="carousel-caption">
                 <h5>API use</h5>
                 <p>API use placeholder content for the second slide</p>
                 <p><a href="#" class="btn btn-warning mt-3">API use</a></p>             
             </div>
        </div>

  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

    <!-- <div id="carouselExampleAutoplaying" class="carousel slide" data-bs-ride="carousel">
      <div class="carousel-inner">
  

        <div class="carousel-item">
          <img src="img/ayam.jpeg" class="d-block w-100" alt="...">
             <div class="carousel-caption d-none d-md-block">
                 <h5>API use</h5>
                 <p>API use placeholder content for the second slide</p>
                 <p><a href="#" class="btn btn-warning mt-3">API use</a></p>             
             </div>
        </div>

      <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </button>

      <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
      </button>

     </div>
    </div> -->

    <!-- About section -->
    <section id="about" class="about section-padding" >
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-12 col-12">
                    <div class="about-img">
                        <img src="img/about.jpg" alt="" class="img-fluid">
                    </div>
                </div>
                <div class="col-lg-8 col-md-12 col-12 ps-lg-5 mt-md-5">
                    <div class="about-text">
                        <h2>Application Programming Interface<br>Livestock API</h2>
                        <p>
                        Livestock is an activity of breeding and cultivating livestock to obtain benefits and results from these activities.
                        Animal husbandry began since the domestication of animals (animal cultivation so that it could be maintained and utilized by humans) in a process that began around 13,000 BC. 
                        Different types of animals began to be domesticated at different times and places in history.
                        We provide interface programs that can connect one application to another. 
                        To help entrepreneurs in the field of animal husbandry, we provide an API program to find the location of farms, livestock, and products from the farms that have been searched for. 
                        Therefore, we named the API program, Livestock API.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Service section -->

    <section id="service" class="service section-padding" >
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="section-header text-center pb-5">
                        <h2>Our Services</h2>
                        <p>We provide Livestock API service.</p>
                    </div>
                </div>
                    <div class="row">
                        <div class="com-12 col-md-12 col-lg-4">
                            <div class="card text-white text-center bg-dark pb-2">
                                <div class="card-body">
                                <i class="bi bi-search"></i>
                                <h3 class="card-title">Pencarian Peternakan</h3>
                                <p class="lead">Mencari lokasi peternakan berdasarkan provinsi.</p>
                                </div>
                            </div>
                        </div>

                        <div class="com-12 col-md-12 col-lg-4">
                            <div class="card text-white text-center bg-dark pb-2">
                                <div class="card-body">
                                <i class="bi bi-search"></i>
                                <h3 class="card-title">Pencarian Peternakan</h3>
                                <p class="lead">Mencari hewan ternak yang terdapat di berbagai provinsi di Indonesia.</p>
                                </div>
                            </div>
                        </div>

                        <div class="com-12 col-md-12 col-lg-4">
                            <div class="card text-white text-center bg-dark pb-2">
                                <div class="card-body">
                                <i class="bi bi-search"></i>
                                <h3 class="card-title">Pencarian Peternakan</h3>
                                <p class="lead">Mencari hasil produksi hewan ternak yang ada di Indonesia.</p>
                                </div>
                            </div>
                        </div>

                    </div>
            </div>
        </div>
    </section>

    <!-- Team Section -->
    <section id="team" class="team section-padding" >
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="section-header text-center pb-5">
                        <h2>Our Team Projects</h2>
                        <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. <br> Ipsam, tempora excepturi veniam magni consequatur laborum corporis totam aperiam! Nobis aspernatur inventore saepe! Rem, nam deleniti!</p>    
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-12 col-md-6 col-lg-3">
                    <div class="card text-center">
                        <div class="card-body">
                            <img src="img/contoh.jpg" alt="" class="img-fluid rounded-circle">
                            <h3 class="card-title py-2">Haha Hihi</h3>
                            <p class="card-text">Lorem ipsum dolor sit amet consectetur, adipisicing elit. In, non.</p>
                        </div>
                    </div>
                </div>

                <div class="col-12 col-md-6 col-lg-3">
                    <div class="card text-center">
                        <div class="card-body">
                            <img src="img/contoh.jpg" alt="" class="img-fluid rounded-circle">
                            <h3 class="card-title py-2">Haha Hihi</h3>
                            <p class="card-text">Lorem ipsum dolor sit amet consectetur, adipisicing elit. In, non.</p>
                        </div>
                    </div>
                </div>

                <div class="col-12 col-md-6 col-lg-3">
                    <div class="card text-center">
                        <div class="card-body">
                            <img src="img/contoh.jpg" alt="" class="img-fluid rounded-circle">
                            <h3 class="card-title py-2">Haha Hihi</h3>
                            <p class="card-text">Lorem ipsum dolor sit amet consectetur, adipisicing elit. In, non.</p>
                        </div>
                    </div>
                </div>

                <div class="col-12 col-md-6 col-lg-3">
                    <div class="card text-center">
                        <div class="card-body">
                            <img src="img/contoh.jpg" alt="" class="img-fluid rounded-circle">
                            <h3 class="card-title py-2">Haha Hihi</h3>
                            <p class="card-text">Lorem ipsum dolor sit amet consectetur, adipisicing elit. In, non.</p>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>


</body>
</html>