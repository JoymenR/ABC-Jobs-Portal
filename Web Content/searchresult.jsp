<%@ taglib uri="/struts-tags" prefix="s" %> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Search</title>
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


* {
  box-sizing: border-box;
}

form.example input[type=text] {
  padding: 10px;
  font-size: 17px;
  border: 1px solid grey;
  float: left;
  width: 80%;
  background: #f1f1f1;
   border-top-left-radius: 25px;
  border-bottom-left-radius: 25px;
}

form.example button {
  float: left;
  width: 20%;
  padding: 10px;
  background-image: linear-gradient(180deg, #2af598 0%, #009efd 100%);

  color: white;
  font-size: 17px;
  border: 1px solid grey;
  border-left: none;
  cursor: pointer;
      border-top-right-radius: 25px;
  border-bottom-right-radius: 25px;
}

form.example button:hover {
background-image: linear-gradient(to right, #92fe9d 0%, #00c9ff 100%);

}

form.example::after {
  content: "";
  clear: both;
  display: table;
}

	body{
	background-image: linear-gradient(to top, #fbc2eb 0%, #a6c1ee 100%);
      background-attachment: fixed;
}

.coxtainer {
  position: relative;
  width: 100%;
}

.imgge {
  opacity: 1;
  display: block;
  width: 100%;
  height: auto;
  transition: .5s ease;
  backface-visibility: hidden;
}

.coxtainer:hover .imgge {
  opacity: 0.3;
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
        <a href="fsuccess" class="scrollto">Logout</a>
      </div>
    </div>
  </section>

  <!-- ======= Header ======= -->
  <header id="header">
    <div class="container d-flex">

      <div class="logo mr-auto">
        <h1 class="text-light"><a href="index2.jsp"><span>ABC Jobs</span></a></h1>
      </div>

      <nav class="nav-menu d-none d-lg-block">
        <ul>
          <li><a href="index2.jsp">Home</a></li>
          <li><a href="index2.jsp#about">About</a></li>
          <li><a href="index2.jsp#services">Services</a></li>
          <li><a href="index2.jsp#values">Mission</a></li>
          <li><a href="index2.jsp#testimonials">Reviews</a></li>
          <li><a href="index2.jsp#faq">FAQ</a></li>
           <li><a href="profile">My Profile</a></li>

        </ul>
      </nav><!-- .nav-menu -->

    </div>
  </header><!-- End Header -->

  <main id="main" id="footer">

  <div class="container col-lg-9 ">
  
	<div class="card shadow-lg p-2 mb-5 bg-white rounded">
<article class="card-body">

<s:form action="SearchUser" method="search" theme="simple" >
      <div class="form-group">
	<div class="input-group">
		<div class="input-group-prepend">
		 </div>
		<s:textfield name="Search" class="form-control" style="width=30px" placeholder="Find People..." /> 
		<s:submit value="search"  class="btn btn-success text-white ml-2" />
		
		</div> <!-- input-group.// -->
	</div> 
</s:form>

<s:if test="noData==true">

			<s:iterator value="beanList">
			
			<div class="coxtainer">
			
				<a class="imgge"  style="text-decoration: none"
					href="FullProfile.action?email=<s:property value="email"/>">
					
				
					
  <table>
  <tr>
  <td class="p-3">
  
  <img class="card-title" src="images/index.png" height="80px" width="80px">
  </td>
  

  
  <td>
  <h5>
									<s:property value="fname" />
									<s:property value="lname" />
								</h5>
  </td>
  
  <td>
  </td>
  
  <td class="p-2">
  <h5 class="form-text text-dark"> <s:property value="jobt" />,  Lives in  <s:property  value="location" />.</h5> 
  </td>
  </tr>
  <hr>
  
  </table>	
					
						
				</a>
				
				</div>
			</s:iterator>	
			
			
			

</s:if>
<s:else>
<div style="color: red;"></div>
</s:else>
<s:if test="insert>0">
<span style="color: red;"><s:property value="msgs" /></span>
</s:if>
<s:else>
<span style="color: red;"><s:property value="msgs" /></span>
</s:else>


</article>
</div> <!-- card.// -->

</div>

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
              <li><i class="bx bx-chevron-right"></i> <a href="index2.jsp">Home</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="index2.jsp#about">About us</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="index2.jsp#services">Services</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="index2.jsp#values">Missions</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="index2.jsp#">Privacy</a></li>
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