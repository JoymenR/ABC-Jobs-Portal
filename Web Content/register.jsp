<%@ taglib uri="/struts-tags" prefix="s" %> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Register</title>
  <meta content="" name="descriptison">
  <meta content="" name="keywords">
	
	
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
	
	
  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">


  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/venobox/venobox.css" rel="stylesheet">
  <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">



  <link href="assets/css/style.css" rel="stylesheet">

</head>
<style>
	body{
	background-image: linear-gradient(to top, #fbc2eb 0%, #a6c1ee 100%);
      background-attachment: fixed;
}
</style>

<body>

  <!-- ======= Top Bar ======= -->
  <section id="topbar" class="d-none d-lg-block">
    <div class="container d-flex">
      <div class="contact-info mr-auto">
        <ul>
          <li><i class="icofont-envelope"></i><a href="mailto:abcjobs@abc.com">abcjobs@abc.com</a></li>
        </ul>

      </div>
      <div class="cta">
        <a href="login.jsp" class="scrollto">Login</a>
      </div>
    </div>
  </section>

  <!-- ======= Header ======= -->
  <header id="header">
    <div class="container d-flex">

      <div class="logo mr-auto">
        <h1 class="text-light"><a href="index.jsp"><span>ABC Jobs</span></a></h1>
      </div>

      <nav class="nav-menu d-none d-lg-block">
        <ul>
          <li><a href="index.jsp">Home</a></li>
          <li><a href="index.jsp#about">About</a></li>
          <li><a href="index.jsp#services">Services</a></li>
          <li><a href="index.jsp#values">Mission</a></li>
          <li><a href="index.jsp#testimonials">Reviews</a></li>
          <li><a href="index.jsp#faq">FAQ</a></li>
          
          <li  class="active"><a href="register.jsp">Register</a></li>

        </ul>
      </nav><!-- .nav-menu -->

    </div>
  </header><!-- End Header -->

  <main id="main" >
  <center>
  	<div class="container ">
  		<div class="row justify-content-center">
<div class="col-md-6 shadow-lg p-3 mb-5 bg-white rounded">
<div class="card">
<header class="card-header">
	
	<h4 class="card-title mt-2">Register</h4>
	
</header>
	<s:actionmessage class="text-danger text-center" />
<article class="card-body">
<s:form action="employee" method="post" theme="simple">
	<div class="form-row">
		<div class="col form-group">
			<label>First name </label>   
		  	<s:textfield name="fname" class="form-control" required="true"/>
		</div> <!-- form-group end.// -->
		<div class="col form-group">
			<label>Last name</label>
		  	<s:textfield name="lname"  class="form-control" required="true"/>
		</div> <!-- form-group end.// -->
	</div> <!-- form-row end.// -->
	<div class="form-group">
		<label>Email address</label>
		<s:textfield name="email" type="email" class="form-control" required="true"/>
		<small class="form-text text-muted">We'll never share your email with anyone else.</small>
	</div> <!-- form-group end.// -->
	<div class="form-group">
			<s:radio class="mr-2" id="gend" name="gender" label="Gender" title="Gender" list="#{'Male' : 'Male'}" required="true" />
		<s:radio class="ml-2" id="gend" name="gender" title="Gender" list="#{ 'Female' : 'Female'}" required="true" />
	</div> <!-- form-group end.// -->
	<div class="form-group">
		<label>Contact</label>
		<s:textfield name="contact"  class="form-control" required="true" />
	</div>
	<div class="form-group">
		<label>Create Password</label>
	    <s:password name="password"  class="form-control" required="true" />
	</div> <!-- form-group end.// -->  
    <div class="form-group">
        <s:submit type="submit" value="Register" class="btn btn-primary btn-block"/>  
    </div> <!-- form-group// -->      
    <small class="text-muted">By clicking the 'Sign Up' button, you confirm that you accept our <br> Terms of use and Privacy Policy.</small>                                          
</s:form>
</article> <!-- card-body end .// -->
<div class="border-top card-body text-center">Have an account? <a href="login.jsp">Log In</a></div>
</div> <!-- card.// -->
</div> <!-- col.//-->

</div> <!-- row.//-->


</div> 
  
	</div>
 </center>
 <br> 
  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">

    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6 footer-contact">
            <h3>ABC Jobs</h3>
            <p>
              A108 Wall Street <br>
              Los Santos, LS 535022<br>
              United States <br><br>
              <strong>Phone:</strong> +1 5589 55488 55<br>
              <strong>Email:</strong> abcjobs@abc.com<br>
            </p>
          </div>

          <div class="col-lg-2 col-md-6 footer-links">
            <h4>Useful Links</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="index.jsp">Home</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="index.jsp#about">About us</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="index.jsp#services">Services</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="index.jsp#values">Missions</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Privacy</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Our Services</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Job Search</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Job Aletrs</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Filtered Search</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Company Verification</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Marketing</a></li>
            </ul>
          </div>

          <div class="col-lg-4 col-md-6 footer-newsletter">
            <h4>Join Our Newsletter</h4>
            <p>Alwyas Stay Updated with us and join our family</p>
            <form action="" method="post">
              <input type="email" name="email"><input type="submit" value="Subscribe">
            </form>
          </div>

        </div>
      </div>
    </div>

    <div class="container d-lg-flex py-4">

      <div class="social-links text-center text-lg-right pt-3 pt-lg-0">
        <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
        <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
        <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
        <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
        <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
      </div>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/jquery/jquery.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/vendor/jquery-sticky/jquery.sticky.js"></script>
  <script src="assets/vendor/venobox/venobox.min.js"></script>
  <script src="assets/vendor/owl.carousel/owl.carousel.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>


  <script src="assets/js/main.js"></script>

</body>

</html>