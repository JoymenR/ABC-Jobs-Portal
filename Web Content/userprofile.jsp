<%@ taglib uri="/struts-tags" prefix="s" %> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Dashboard</title>
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

.zzz {
  float: left;
  border: 1px solid #ccc;
  background-color: #f1f1f1;
  width: 30%;
  height: 510px;
}

/* Style the buttons inside the tab */
.zzz button {
  display: block;
  background-color: inherit;
  color: black;
  padding: 22px 16px;
  width: 100%;
  border: none;
  outline: none;
  text-align: left;
  cursor: pointer;
  transition: 0.3s;
  font-size: 17px;
}

/* Change background color of buttons on hover */
.zzz button:hover {
  background-color: #ddd;
}

/* Create an active/current "tab button" class */
.zzz button.active {
  background-color: #ccc;
}

/* Style the tab content */
.niya {
  float: left;
  padding: 12px 12px;
  border: 1px solid #ccc;
  width: 70%;
  border-left: none;
  height: 510px;
  background-color: #f1f1f1;
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
          <li class="active"><a href="index2.jsp">Home</a></li>
          <li><a href="index2.jsp#about">About</a></li>
          <li><a href="index2.jsp#services">Services</a></li>
          <li><a href="index2.jsp#values">Mission</a></li>
          <li><a href="index2.jsp#testimonials">Reviews</a></li>
          <li><a href="index2.jsp#faq">FAQ</a></li>
          <li><a href="searchresult.jsp">Find People</a></li>
          <li class="active"><a href="profile">My Profile</a></li>
         
        </ul>
      </nav><!-- .nav-menu -->

    </div>
  </header><!-- End Header -->

	<div>
  <main id="main" id="footer">
  <center>
 
  <div class="container">
  
  		
  		<aside class="col-lg-11" style="font-size:18px;">	
  		
  		<div class=" bg-transparent card border-0 rounded">
  		
  		<article class="card-body bg-transparent">
  		
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
  

  		
  		
  		
  		
  		
  		 <div class="card-header bg-dark text-white text-lg-left">
  Welcome, 
<s:iterator value="beanList">

<s:property value="fname"/>  <s:property value="lname" /> 		

</s:iterator>
  </div>
	<div class="zzz">
	
  <button class="zzzls" onclick="openCity(event, 'London')" id="defaultOpen"><i class="fa fa-user"></i>  Personal Details</button>
  <button class="zzzls" onclick="openCity(event, 'Paris')"><i class="fa fa-briefcase"></i>  Experience Details</button>
  <button class="zzzls" onclick="openCity(event, 'Tokyo')"><i class="fa fa-star"></i>  Skill Details</button>
  <button class="zzzls" onclick="openCity(event, 'hola')"><i class="fa fa-file-pdf"></i>  Resume Details</button>
</div>

<div id="London" class="niya">

<s:if test="noData==true">


				<s:iterator value="beanList">
					
						
							First Name : <s:property value="fname" />
							<br> <br> 
							Last Name : <s:property value="lname" /> 
							<br> 	<br> 					
							Gender : <s:property  value="gender" /> 
							<br> <br> 
							Email : <s:property  value="email" /> 
							<br>
							<br>
							Contact : <s:property  value="contact" /> 
							<br>
							<br>
							Date Of Birth : <s:property  value="dob" /> 
							<br>
							<br>
							Institute : <s:property  value="institue" /> 
							<br>
							<br>
							Location : <s:property  value="location" /> 
							<br>
							<br>
							<a href="update">
								<button class="btn btn-primary">Edit</button>
							</a>
							
					
				</s:iterator>
			
		</s:if>
		<s:else>
			<div style="color: red;">No Data Found.</div>
		</s:else>


</div>

<div id="Paris" class="niya">
 <s:if test="noData==true">


				<s:iterator value="beanList">
					
					
							Fresher/Experience : <s:property value="fore" />
							<br> <br> 
							Job Title : <s:property value="jobt" /> 
							<br> 	<br> 					
							Experience : <s:property  value="exp" /> 
							<br> <br> 
							Expected_Salary  : <s:property  value="expectedsal" /> 
							<br>
							<br>
							<a href="update">
								<button class="btn btn-primary">Edit</button>
							</a>
							
					
				</s:iterator>
			
		</s:if>
		<s:else>
			<div style="color: red;">No Data Found.</div>
		</s:else>	
</div>

<div id="Tokyo" class="niya">
<s:if test="noData==true">


				<s:iterator value="beanList">
					
						
							Key Skill : <s:property value="kskill" />
							<br> <br> 
							Skill Experience : <s:property value="skillexp" /> 
							<br> 	<br> <br>					
							Key Skill : <s:property  value="kskill2" /> 
							<br> <br> 
							Skill Experience : <s:property  value="skillexp2" /> 
							<br>
							<br>
							<a href="update">
								<button class="btn btn-primary">Edit</button>
							</a>
							
					
				</s:iterator>
			
		</s:if>
		<s:else>
			<div style="color: red;">No Data Found.</div>
		</s:else>	
</div>

<div id="hola" class="niya">
 <s:if test="noData==true">


				<s:iterator value="beanList">
					
						
							Resume Last Updated On : <s:property value="resumetime" />
							<br> <br> 
							Resume File : <s:property  value="resume" />
							<br> 	<br> <br>					
							
							<a href="update">
								<button class="btn btn-primary">Edit</button>
							</a>
							
					
				</s:iterator>
			
		</s:if>
		<s:else>
			<div style="color: red;">No Data Found.</div>
		</s:else>	
</div>
</article>
</div>
</aside>
	</div>
	
	
</main>
</div>
	
	
	
 </center> 
  <!-- End #main -->

<br>
	

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


	<script>
function openCity(evt, cityName) {
  var i, niya, zzzls;
  niya = document.getElementsByClassName("niya");
  for (i = 0; i < niya.length; i++) {
	  niya[i].style.display = "none";
  }
  zzzls = document.getElementsByClassName("zzzls");
  for (i = 0; i < zzzls.length; i++) {
	  zzzls[i].className = zzzls[i].className.replace(" active", "");
  }
  document.getElementById(cityName).style.display = "block";
  evt.currentTarget.className += " active";
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>
   

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