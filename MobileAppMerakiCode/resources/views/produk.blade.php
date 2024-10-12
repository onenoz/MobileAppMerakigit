<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Meraki Cipta Rasa</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500&family=Jost:wght@500;600;700&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="{{asset('lib/animate/animate.min.css')}}" rel="stylesheet">
    <link href="{{asset('lib/owlcarousel/assets/owl.carousel.min.css')}}" rel="stylesheet">
    <link href="{{asset('lib/lightbox/css/lightbox.min.css')}}" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="{{asset('css/bootstrap.min.css')}}" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="{{asset('css/style.css')}}" rel="stylesheet">
</head>
<body>
    <div class="container-xxl bg-white p-0">
        <!-- Spinner Start -->
        <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-grow text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->
        <!-- Navbar & Hero Start -->
        <div class="container-xxl position-relative p-0">
            <nav class="navbar navbar-expand-lg navbar-light px-4 px-lg-5 py-3 py-lg-0">
                <a href="/ " class="navbar-brand p-0">
                    <img src="{{ asset('img/logo meraki.png') }}" alt="Logo"> 
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                    <span class="fa fa-bars"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <div class="navbar-nav mx-auto py-0">
                        <a href="/ " class="nav-item nav-link">Beranda</a>
                        <a href="/perusahaan" class="nav-item nav-link">Perusahaan</a>
                        <a href="/merek" class="nav-item nav-link">Merek</a>
                        <a href="/berita" class="nav-item nav-link">Berita</a>
                        <a href="/kontak" class="nav-item nav-link">Kontak</a>
                        <div class="col-sm-1 col-md-auto align-self-center align-items-end justify-content-end p-1">
                            <a href="" class="btn btn-social btn-sm btn bg-transparent">
                                <img class="img-fluid" src="{{ asset('img/bendera indo.jpg') }}" style="max-width: 20px; max-height: 25px;">
                            </a>
                        </div>
                        <div class="col-sm-1 col-md-auto align-self-center align-items-end justify-content-end p-1">
                            <a href="/ " class="btn btn-social btn-sm btn bg-transparent">
                                <img class="img-fluid" src="{{ asset('img/bendera inggris.jpg') }}" style="max-width: 20px; max-height: 25px;">
                            </a>
                        </div>
                    </div>
                </div>
            </nav>
        </div>
        <div class="container-xxl py-5 bg-primary hero-header">
            <div class="container my-5 py-5 px-lg-5">
                <div class="row g-5 py-5">
                    <div class="col-lg-6 text-center ">
                        <img class="img-fluid animated zoomIn" src="img/wizz_sausage.png" alt="">
                    </div>
                <div class="col-lg-6 text-center ">
                    <h1 class="text-white mb-4 slideInDown">{{ $brand->brand_name }}</h1>
                    <nav caria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center">
                            <li class="breadcrumb-item text-white"><a class="breadcrumb-item" href="/merek">Merek</li></a>
                            <li class="breadcrumb-item text-white"><a class="breadcrumb-item active">{{ $brand->brand_name }}</li></a>
                        </ol>
                    </nav>
                    <hr class="bg-white mx-auto mt-0" style="width: 90px;">
                    <p class="text-white animated slideInDown">Deksripsi singkat merek</p>
                </div>
            </div>
        </div>
    </div>
    <!-- Navbar & Hero End -->

    <!-- Detail Product-->
    <div class="container-xxl py-5">
        <div class="container-dekspro">
            @foreach($lstproduk as $lp)
                <div class="row base-dekripsi detail" id="{{ str_replace(' ','',$lp->product_code) }}">
                    <div class="base col-md-4">
                        <div class="base-body align-items-center">
                            <img class="img-fluid w-100" src="~/img/sosis ayam rasa original.jpg" />
                        </div>
                    </div>
                    <div class="base col-md-8 dekripsi-konten">
                            <h3 class="text-white text-capitalize">{{ $lp->product_name }}</h3>
                        <div class="content">
                            {{ $lp->description }}
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
        <!--Detail Product -->

        <!--Produk Item-->
        <div class="container-xxl py-5">
            <div class="container py-5 px-lg-5">
                <div class="row g-4">
                    @foreach($lstproduk as $lp)
                        <div class="col-lg-4 col-md-6">
                            <div class="product-item d-flex flex-column text-center button" id="{{ str_replace(' ','',$lp->product_code) }}" style="height:100%">
                                <img class="img-fluid w-100" src="{{$lp->image}}" />
                                <div class="product-item label" style="height:100%">
                                    {{$lp->product_name}}
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
    <!-- Product Item End -->

    <!-- Footer Start -->
    <div class="container-fluid bg-primary text-light footer wow fadeIn" data-wow-delay="0.1s">
        <div class="container py-5 px-lg-5">
            <div class="row g-5">
                <div class="col-md-3 col-lg-4">
                    <img class="img-fluid" src="{{asset('img/logo meraki.png')}}">
                </div>
                <div class="col-md-6 col-lg-4">
                    <div class="d-flex pt-2">
                        <div class="d-flex flex-column" style="margin: auto; padding: auto;">
                            <div class="d-flex pt-2">
                                <div class="btn btn-outline-light btn-social"><img class="img-fluid rounded-circle" src="{{asset('img/Logo jmkp.png')}}"></div>
                                <div class="btn btn-outline-light btn-social"><img class="img-fluid rounded-circle" src="{{asset('img/logo halal.jpeg')}}"></div>
                                <div class="btn btn-outline-light btn-social"><img class="img-fluid rounded-circle" src="{{asset('img/logo gmp.png')}}"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4">
                    <a href="/galeri"><p class="section-title text-white h5 mb-4">Galeri</p></a>
                    <div class="row g-2">
                        <div class="col-4">
                            <img class="img-fluid" src="img/galeri1.png" alt="Image">
                        </div>
                        <div class="col-4">
                            <img class="img-fluid" src="img/galeri2.png" alt="Image">
                        </div>
                        <div class="col-4">
                            <img class="img-fluid" src="img/galeri3.png" alt="Image">
                        </div>
                        <div class="col-4">
                            <img class="img-fluid" src="img/galeri4.png" alt="Image">
                        </div>
                        <div class="col-4">
                            <img class="img-fluid" src="img/galeri5.png" alt="Image">
                        </div>
                        <div class="col-4">
                            <img class="img-fluid" src="img/galeri6.png" alt="Image">
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4">
                    <p class="section-title text-white h5 mb-4">Alamat Pabrik</p>
                    <p>
                        Jl. Citanduy Blok D No. 6 Perum Pondok Cabe Indah,
                        Cipayung, Tangerang Selatan 15418
                    </p>
                    <div class="d-flex pt-2">
                        <a class="btn btn-outline-light btn-social" href="https://www.instagram.com/merakiciptarasa?igsh=YXlwbWttcTVrdm5y"><i class="fab fa-instagram"></i></a>
                        <a class="btn btn-outline-light btn-social" href="https://api.whatsapp.com/send/?phone=6287773379369&text=Terima+kasih+telah+menghubungi+Meraki+Cipta+Rasa%2C+Mari+saya+bantu%21&type=phone_number&app_absent=0"><i class="fab fa-whatsapp"></i></a>
                        <a class="btn btn-outline-light btn-social" href="https://youtube.com/merakiciptarasa?si=qiTrRYiRn02IbZ8y"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="container px-lg-5">
            <div class="copyright">
                <div class="row align-items-center">
                    <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                        <a class="border-bottom" href="#">Meraki Cipta Rasa</a>, All Right Reserved.
                        <!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
                        Designed By <a class="border-bottom" href="https://htmlcodex.com">HTML Codex</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer End -->
            
<!-- JavaScript Libraries -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="{{asset('lib/wow/wow.min.js')}}"></script>
    <script src="{{asset('lib/easing/easing.min.js')}}"></script>
    <script src="{{asset('lib/waypoints/waypoints.min.js')}}"></script>
    <script src="{{asset('lib/counterup/counterup.min.js')}}"></script>
    <script src="{{asset('lib/owlcarousel/owl.carousel.min.js')}}"></script>
    <script src="{{asset('lib/isotope/isotope.pkgd.min.js')}}"></script>
    <script src="{{asset('lib/lightbox/js/lightbox.min.js')}}"></script>

    <!-- Template Javascript -->
    <script src="{{asset('js/main.js')}}"></script>

</body>
</html>