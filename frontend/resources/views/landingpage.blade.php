<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
  <link rel="stylesheet"  href="{{ ('css/styles.css') }}">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
  <title>Livestock API</title>


</head>

<body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>    


    @section('header')
        @include('layouts.header')

    @show

    <!-- About section -->
    <section id="about" class="about section-padding" >
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-12 col-12">
                    <div class="about-img">
                        <img src="img/about.jpg" alt="" class="img-fluid">
                    </div>
                </div>
                <div class="col-lg-8 col-md-12 col-12 ps-lg-5 mt-md-2">
                    <div class="about-text">
                        <h2>Application Programming Interface<br>Livestock API</h2>
                        <p>
                        Livestock is an activity of breeding and cultivating livestock to obtain benefits and results from these activities.
                        We provide interface programs that can connect one application to another. 
                        To help entrepreneurs in the field of animal husbandry, we provide an API program to find the location of farms, livestock, and products from the farms that have been searched for. 
                        Therefore, we named the API program, Livestock API.</p>
                    </div>
                    <a class="btn btn-warning" href="#" role="button">API Use</a>
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
                            <div class="card text-white text-center bg-dark pb-4">
                                <div class="card-body">
                                <i class="bi bi-search"></i>
                                <h3 class="card-title">Pencarian Peternakan</h3>
                                <p class="lead">Mencari lokasi peternakan berdasarkan provinsi.</p>
                                </div>
                            </div>
                        </div>

                        <div class="com-12 col-md-12 col-lg-4">
                            <div class="card text-white text-center bg-dark pb-4">
                                <div class="card-body">
                                <i class="bi bi-search"></i>
                                <h3 class="card-title">Pencarian Peternakan</h3>
                                <p class="lead">Mencari hewan ternak yang terdapat di berbagai provinsi di Indonesia.</p>
                                </div>
                            </div>
                        </div>

                        <div class="com-12 col-md-12 col-lg-4">
                            <div class="card text-white text-center bg-dark pb-4">
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