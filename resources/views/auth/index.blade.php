<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>MoneySync</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="assets/img/logo.png" rel="icon">
    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="assets/vendor/aos/aos.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
    <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="assets/css/style1.css" rel="stylesheet">

    <!-- =======================================================
  * Template Name: Appland
  * Updated: Sep 25 2023 with Bootstrap v5.3.2
  * Template URL: https://bootstrapmade.com/free-bootstrap-app-landing-page-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<style>
    .copyright {
        text-align: center;
    }
</style>

<body>

    <!-- ======= Header ======= -->
    <header id="header" class="fixed-top  header-transparent ">
        <div class="container d-flex align-items-center justify-content-between">

            <div class="logo">
                <h1>
                    <a href="{{ route('index') }}"><img src="{{ asset('assets/img/logo3.png') }}" alt="logo"></a>
                </h1>
                <!-- Uncomment below if you prefer to use an image logo -->
                <!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
            </div>

            <nav id="navbar" class="navbar">
                <ul>
                    <li><a class="nav-link scrollto active" href="{{ route('index') }}">Home</a></li>
                    <li><a class="nav-link scrollto" href="#features">App Features</a></li>
                    <li><a class="nav-link scrollto" href="#contact">Contact</a></li>
                    <li><a class="getstarted scrollto" href="{{ route('login') }}">Login</a></li>
                </ul>
                <i class="bi bi-list mobile-nav-toggle"></i>
            </nav><!-- .navbar -->

        </div>
    </header><!-- End Header -->

    <!-- ======= Hero Section ======= -->
    <section id="hero" class="d-flex align-items-center">

        <div class="container">
            <div class="row">
                <div class="col-lg-6 d-lg-flex flex-lg-column justify-content-center align-items-stretch pt-5 pt-lg-0 order-2 order-lg-1" data-aos="fade-up">
                    <div>
                        <h1>Manajemen Keuangan Cerdas</h1>
                        <h2>Optimalkan Pengelolaan Keuangan Anda dengan MoneySync.id</h2>
                        <!-- <a href="#" class="download-btn"><i class="bx bxl-play-store"></i> Google Play</a>
                        <a href="#" class="download-btn"><i class="bx bxl-apple"></i> App Store</a> -->
                    </div>
                </div>
                <div class="col-lg-6 d-lg-flex flex-lg-column align-items-stretch order-1 order-lg-2 hero-img" data-aos="fade-up">
                    <img src="assets/img/hero-img.png" class="img-fluid" alt="">
                </div>
            </div>
        </div>

    </section><!-- End Hero -->

    <main id="main">

        <!-- ======= App Features Section ======= -->
        <section id="features" class="features">
            <div class="container">

                <div class="section-title">
                    <h2>App Features</h2>
                </div>

                <div class="row no-gutters">
                    <div class="col-xl-8 d-flex align-items-stretch order-2 order-lg-1">
                        <div class="content d-flex flex-column justify-content-center">
                            <div class="row">
                                <div class="col-md-6 icon-box feature-box" data-aos="fade-up">
                                    <i class="bx bx-receipt"></i>
                                    <h4>Pemantauan</h4>
                                    <p>Melacak semua transaksi pengeluaran dan pemasukan.</p>
                                </div>
                                <div class="col-md-6 icon-box feature-box" data-aos="fade-up" data-aos-delay="200">
                                    <i class="bx bx-images"></i>
                                    <h4>Kategori Transaksi</h4>
                                    <p>Pengguna dapat mengategorikan setiap transaksi.</p>
                                </div>
                                <div class="col-md-6 icon-box feature-box" data-aos="fade-up" data-aos-delay="300">
                                    <i class="bx bx-atom"></i>
                                    <h4>Laporan</h4>
                                    <p>Menyediakan laporan dan analisis keuangan</p>
                                </div>
                                <div class="col-md-6 icon-box feature-box" data-aos="fade-up" data-aos-delay="400">
                                    <i class="bx bx-id-card"></i>
                                    <h4>Pengelolaan Pengguna</h4>
                                    <p>Memberikan opsi untuk membuat beberapa profil pengguna.</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="image col-xl-4 d-flex align-items-stretch justify-content-center order-1 order-lg-2" data-aos="fade-left" data-aos-delay="100">
                        <img src="assets/img/details-1.png" class="img-fluid" alt="">
                    </div>
                </div>
            </div>
        </section><!-- End App Features Section -->

        <!-- ======= Details Section ======= -->
        <!-- End Details Section -->

        <!-- ======= Gallery Section ======= -->
        <!-- End Gallery Section -->

        <!-- ======= Testimonials Section ======= -->
        <!-- End Testimonials Section -->

        <!-- ======= Pricing Section ======= -->
        <!-- End Pricing Section -->

        <!-- ======= Frequently Asked Questions Section ======= -->
        <!-- End Frequently Asked Questions Section -->

        <!-- ======= Contact Section ======= -->
        <section id="contact" class="contact">
            <div class="container" data-aos="fade-up">

                <div class="section-title">
                    <h2>Contact</h2>
                </div>

                <div class="container">
                    <div class="row">
                        <div class="col-lg-3 info">
                            <i class="bx bx-map"></i>
                            <h4>Address</h4>
                            <p>Universitas Duta Bangsa<br> Surakarta Jawa Tengah 57154</p>
                        </div>
                        <div class="col-lg-3 info">
                            <i class="bx bx-phone"></i>
                            <h4>Call Us</h4>
                            <p>220103111<br>220103123<br>220103124</p>
                        </div>
                        <div class="col-lg-3 info">
                            <i class="bx bx-envelope"></i>
                            <h4>Email Us</h4>
                            <p>adnanhanafi@gmail.com<br>faridanwars@gmail.com<br>fitriaayun@gmai.com</p>
                        </div>
                        <div class="col-lg-3 info">
                            <i class="bx bx-time-five"></i>
                            <h4>Working Hours</h4>
                            <p>Mon - Fri: 8AM to 5PM<br>Sunday: 8AM to 1PM</p>
                        </div>
                    </div>
                </div>

        </section><!-- End Contact Section -->

    </main><!-- End #main -->

    <!-- ======= Footer ======= -->
    <footer id="footer">
        <div class="footer-top">
            <div class="container">
                <div class="row">
                    <div class="container py-4">
                        <div class="copyright">
                            &copy; Copyright <strong><span>MoneySync</span></strong>. All Rights Reserved
                        </div>
    </footer><!-- End Footer -->

    <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

    <!-- Vendor JS Files -->
    <script src="assets/vendor/aos/aos.js"></script>
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
    <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
    <script src="assets/vendor/php-email-form/validate.js"></script>

    <!-- Template Main JS File -->
    <script src="assets/js/main.js"></script>

</body>

</html>