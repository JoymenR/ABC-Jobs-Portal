<%@ taglib uri="/struts-tags" prefix="s" %> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Update</title>
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
        <a href="logsuccess" class="scrollto">Logout</a>
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
           <li><a href="searchresult.jsp">Find People</a></li>
          <li><a href="profile">My Profile</a></li>
       

        </ul>
      </nav><!-- .nav-menu -->

    </div>
  </header><!-- End Header -->

  <main id="main" >
  <center>
  	<div class="container ">
  		<div class="row justify-content-center">
<div class="col-lg-9 shadow-lg p-3 mb-5 bg-white rounded">
<div class="card">



 

<article class="card-body">
<div class="card-header bg-dark text-white text-lg-left">
		Personal Details
 </div>
 <br>
<br>
<s:iterator value="beanList">
<s:form action="updatedetails" theme="simple">
	<div class="form-row">
		<div class="col form-group">
			<label>First name </label>   
		  	<s:textfield name="fname" class="form-control" />
		</div> <!-- form-group end.// -->
		<div class="col form-group">
			<label>Last name</label>
		  	<s:textfield name="lname"  class="form-control" />
		</div> <!-- form-group end.// -->
	</div>
	
	
	
	
		<div class="form-row">
		<div class="col form-group">
			<label>Date Of Birth</label>   
		  	<s:textfield type="date" name="dob" class="form-control"/>
		</div> <!-- form-group end.// -->
		<div class="col form-group">
			<label>Gender</label><br>
		  	<s:radio class="mr-2" id="gend" name="gender" label="Gender" title="Gender" list="#{'Male' : 'Male'}"  />
		<s:radio class="ml-2" id="gend" name="gender" title="Gender" list="#{ 'Female' : 'Female'}" />
		</div> <!-- form-group end.// -->
	</div>
	
	
	
	
		<div class="form-row">
		<div class="col form-group">
			<label>Contact </label>   
		  	<s:textfield name="contact" class="form-control" />
		</div> <!-- form-group end.// -->
		<div class="col form-group">
			<label>Email : </label>
		  	<s:property value="email"/>
		</div> <!-- form-group end.// -->
	</div> 
	
	
	
			<div class="form-row">
		<div class="col form-group">
			<label>Institute</label>   
		  	<s:textfield name="institue" class="form-control"/>
		</div> <!-- form-group end.// -->
		<div class="col form-group">
			<label>Location</label>
		  	<s:textfield name="location" class="form-control"/>
		</div> <!-- form-group end.// -->
	</div>
	
	
	  <div class="form-group">
        <button type="button" class="btn btn-primary btn-block" data-toggle="modal" data-target="#exampleModal">
Save
</button> 
    <br><br><br><br><br>
	
	<div class="card-header bg-dark text-white text-lg-left">
		Experience Details
 	</div>
 	 <br><br>	
 	 
 	 
 	 		<div class="form-row">
		<div class="col form-group">
			<label>Are you a Fresher or Experienced ?</label>   
		  	<s:select class="form-control" label ="Fresher Or Experienced" list="{'Fresher', 'Experienced'}" name="fore"></s:select>
		</div> <!-- form-group end.// -->
		<div class="col form-group">
			<label>Experience</label>
		  	<s:select label ="Experience" class="form-control" list="{'None', '1 Years', '2 Years', '3 Years', '4 Years', '5 Years'}" name="exp"></s:select>
		</div> <!-- form-group end.// -->
	</div>
 	 
 	 
 	 
 	 
 	 
 	 
 	 
			<div class="form-row">
		<div class="col form-group">
			<label>Job Title</label>   
		  	<s:textfield name="jobt" class="form-control"/>
		</div> <!-- form-group end.// -->
		<div class="col form-group">
			<label>Expected Salary</label>
		  	<s:select label ="Expected Salary"   class="form-control" list="{'20,000 Rs - 50,000 Rs','50,000 Rs - 1,00,000 Rs', '1,00,000 Rs - 1,50,000 Rs', '1,50,000 Rs - 2,00,000 Rs'}" name="expectedsal"></s:select>
		</div> <!-- form-group end.// -->
	</div>
	
 	 
 	   <div class="form-group">
        <button type="button" class="btn btn-primary btn-block" data-toggle="modal" data-target="#exampleModal">
Save
</button> 
    <br><br><br><br><br>
	
 	 
 	 
 	 
 	 <div class="card-header bg-dark text-white text-lg-left">
		Skill Details
 	</div>
 	 <br><br>
 	 
 	 <div class="form-row">
		<div class="col form-group">
			<label>Key Skill</label>   
		  	<s:textfield name="kskill" class="form-control"/>
		</div> <!-- form-group end.// -->
		<div class="col form-group">
			<label>Skill Experience</label>
		  	<s:select label ="Experience" class="form-control" list="{'1 Years', '2 Years', '3 Years', '4 Years', '5 Years'}" name="skillexp"></s:select>
		</div> <!-- form-group end.// -->
	</div>
 	 
 	 
 	 <br>
 	 
 	 <div class="form-row">
		<div class="col form-group">
			<label>Key Skill</label>   
		  	<s:textfield name="kskill2" class="form-control"/>
		</div> <!-- form-group end.// -->
		<div class="col form-group">
			<label>Skill Experience</label>
		  	<s:select label ="Experience" class="form-control" list="{'1 Years', '2 Years', '3 Years', '4 Years', '5 Years'}" name="skillexp2"></s:select>
		</div> <!-- form-group end.// -->
	</div>
 	 
 	 
 	 
 	 
 	  <div class="form-group">
        <button type="button" class="btn btn-primary btn-block" data-toggle="modal" data-target="#exampleModal">
Save
</button> 
    <br><br><br><br><br>
	
	
	
	 <div class="card-header bg-dark text-white text-lg-left">
		Resume Details
 	</div>
 	 <br><br>
	
	<div class="form-group text-left">
		<label>Resume File</label>
		<s:file name="resume" label="Select your resume to upload" size="40" />
	</div>
	
	<div class="form-group text-left">
		<label>Last Uploaded On <s:property value="resumetime"/></label>
	</div>
 	 
 	  	  <div class="form-group">
        <button type="button" class="btn btn-primary btn-block" data-toggle="modal" data-target="#exampleModal">
Save
</button> 
    </div>

 	 
 	 
 	 
 	   
  <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Update Now?</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body text-left">
        Are You Sure You Want To Update These Details ?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
			 <s:submit type="submit" value="Save" class="btn btn-primary"/>
      </div>
    </div>
  </div>
</div>
                                              
</s:form>
</s:iterator>
</article> <!-- card-body end .// -->
	
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
              <li><i class="bx bx-chevron-right"></i> <a href="index2.jsp">Home</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="index2.jsp#about">About us</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="index2.jsp#services">Services</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="index2.jsp#values">Missions</a></li>
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