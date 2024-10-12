<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- Favicon -->
    <link href="~/img/favicon.ico" rel="icon">

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
                    <img src="img/logo meraki.png" alt="Logo">
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                    <span class="fa fa-bars"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <div class="collapse navbar-collapse" id="navbarCollapse">
                        <div class="navbar-nav mx-auto py-0">
                            <a href='/ ' id="linkHome" class="nav-item nav-link active">Beranda</a>
                            <a href="/perusahaan" class="nav-item nav-link">Perusahaan</a>
                            <a href="/merek" class="nav-item nav-link">Merek</a>
                            <a href="/berita" class="nav-item nav-link">Berita</a>
                            <a href="/kontak" class="nav-item nav-link">Kontak</a>
                            <div class="col-sm-1 col-md-auto align-self-center align-items-end justify-content-end p-1">
                                <a href="" class="btn btn-social btn-sm btn bg-transparent">
                                    <img class="img-fluid" src="img/bendera indo.jpg" style="max-width: 20px; max-height: 25px;">
                                </a>
                            </div>
                            <div class="col-sm-1 col-md-auto align-self-center align-items-end justify-content-end p-1">
                                <a href="./Home" class="btn btn-social btn-sm btn bg-transparent">
                                    <img class="img-fluid" src="img/bendera inggris.jpg" style="max-width: 20px; max-height: 25px;">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>
            <div class="container-xxl hero-header">
                <img class="w-100" src="img/bannerberandaID.png">
            </div>
        </div>

        <!-- About Start -->
        <div class="container-xxl py-5">
            <div class="container py-5 px-lg-5">
                <div class="row g-5 align-items-center">
                    <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
                        <p class="section-title text-secondary"><span></span> &#x2022; Tentang Kami &#x2022; <span></span></p>
                        <h1 class="mb-5">Meraki Cipta Rasa</h1>
                        <p class="mb-4">
                            Kami mencipta rasa dengan sepenuh hati. Mengolah berbagai produk makanan yang kami racik dari resep orisinal.
                            Sejak tahun 2005 sampai sekarang, Meraki Cipta Rasa terus tumbuh dan berkembang bersama klien setia kami yang terus bertambah tiap harinya.
                            Kami menyediakan produk makanan yang diolah dari bahan pilihan dengan proses pembuatan yang baik untuk menjaga mutu serta kualitas.
                        </p>
                        <a href="/perusahaan" class="btn btn-secondary py-sm-3 px-sm-5 rounded-pill mt-3 text-white">Lihat Lebih Banyak</a>
                    </div>
                    <div class="col-lg-6">
                        <img class="img-fluid wow zoomIn rounded" data-wow-delay="0.5s" src="img/meraki estetik.jpg">
                    </div>
                </div>
            </div>
        </div>
        <!-- About End -->

        <!-- Service Start -->
        <div class="container-xxl py-5">
            <div class="container py-5 px-lg-5">
                <div class="wow fadeInUp" data-wow-delay="0.1s">
                    <p class="section-title text-secondary justify-content-center"><span></span> &#x2022; Merek Kami &#x2022; <span></span></p>
                    <h1 class="text-center mb-5">Jelajahi Produk Kami Untuk Pengalaman Kuliner yang Memikat</h1>
                </div>
                <div class="row g-4 portfolio-container">
                    @foreach($brand as $b)
                        <div class="col-lg-4 col-md-6 portfolio-item first wow fadeInUp" data-wow-delay="0.1s">
                        <a href="produk/{{ $b->id }}">    
                            <div class="rounded overflow-hidden">
                                    <div class="position-relative overflow-hidden">
                                        <img class="img-fluid w-100" src="{{ $b->image }}" alt="">

                                            <div class="portfolio-overlay"></div>
                                    
                                    </div>
                                    <div class="bg-light p-4">
                                        <h5 class="lh-base mb-0">{{ $b->brand_name }}</h5>
                                    </div>
                                </div>
                            </div>
                        </a>    
                    @endforeach
                </div>
            </div>
        </div>
        <!-- Service End -->

        <!-- Projects Start -->
        <div class="container-xxl py-5">
            <div class="container py-5 px-lg-5">
                <div class="wow fadeInUp" data-wow-delay="0.1s">
                    <p class="section-title text-secondary justify-content-center"><span></span> &#x2022; Berita &#x2022; <span></span></p>
                    <h1 class="text-center mb-5">Lihat Lebih Banyak Tentang Perjalanan Kami dan Pencapaian Terbaru di Sini.</h1>
                </div>
                <!-- List Berita Start -->
                <div class="row g-4 gap-3 justify-content-center" data-wow-delay="0.1s id=" berita-container>
                    @foreach($news as $n)
                        <div class="col-lg-3 col-md-6 card wow fadeInUp" style="width: 18rem;">
                            <p class="card-img-top">{{ $n->image }}</p>
                            <div class="card-body d-flex flex-column">
                                <p class="card-text">{{ $n-> title }}</p>
                                <a href="DetailBerita" class="btn btn-card mt-auto"><b>Selengkapnya</b></a>
                            </div>
                        </div>
                    @endforeach
                <div class="container py--0 px-lg-5">
                    <div class="row mt-n2 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="col-12 mt-5 text-center">
                            <a href="/berita" class="btn btn-secondary py-sm-3 px-sm-5 rounded-pill mt-3 text-white">Lihat Lebih Banyak <i class='fas fa-arrow-right'></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Projects End -->

        <!-- Partner Start -->
        <div class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.1s">
            <div class="container py-5 px-lg-5">
                <p class="section-title text-secondary justify-content-center"><span></span> &#x2022; Mitra Kami &#x2022; <span></span></p>
                <h1 class="text-center mb-5">Temukan Produk Meraki di Toko Kesayangan Anda</h1>
                <img src="img/mitra meraki (1).png">
            </div>
        </div>
        <!-- Partner End -->

        <!-- Footer Start -->
        <div class="container-fluid bg-primary text-light footer wow fadeIn" data-wow-delay="0.1s">
            <div class="container py-5 px-lg-5">
                <div class="row g-5">
                    <div class="col-md-3 col-lg-4">
                        <img class="img-fluid" src="img/logo meraki.png">
                    </div>
                    <div class="col-md-6 col-lg-4">
                        <div class="d-flex pt-2">
                            <div class="d-flex flex-column" style="margin: auto; padding: auto;">
                                <div class="d-flex pt-2">
                                    <div class="btn btn-outline-light btn-social"><img class="img-fluid rounded-circle" src="img/Logo jmkp.png"></div>
                                    <div class="btn btn-outline-light btn-social"><img class="img-fluid rounded-circle" src="img/logo halal.jpeg"></div>
                                    <div class="btn btn-outline-light btn-social"><img class="img-fluid rounded-circle" src="img/logo gmp.png"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4">
                        <a href="/galeri"><p class="section-title text-white h5 mb-4">Galeri</p></a>
                        <div class="row g-2">
                            @foreach ($tumbnailphotos as $ltphotos)
                                <div class="col-4">
                                    <img class="img-fluid" src="{{$ltphotos->image}}" alt="Image">
                                </div>
                            @endforeach
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

        <!-- Back to Top -->
        <div>
            <a href="#" class="btn btn-lg btn-secondary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
        </div>

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
    </div>
</body>
</html>