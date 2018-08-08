<?php 
session_start();
session_destroy();
require_once('user.php');
$msgreg=""; $msglog="";
if (isset($_POST['submit']) && ($_POST['submit'] != "")) {
	if ($_POST['submit'] == 'reg') {
		$Reguser = new user();
		$Reguser->firstname=$_POST['firstname'];
		$Reguser->lastname=$_POST['lastname'];
		$Reguser->email=$_POST['email'];
		$Reguser->pwd=$_POST['pwd'];
		//var_dump($Reguser);
		if($_POST['pwd'] == $_POST['confirm_password']){
			$result ="";
			$result = $Reguser->register();
			if($result == "success")
			{
				$msgreg = '<div class ="alert alert-success">successfully registered</div>'; 
			}else
			{
				$msgreg = $result ='<div class ="alert alert-danger">Duplicate entry. Try again</div>';
			}

			
		}else
		{
			$msgreg='Please check your password and try again';
		}
	}
	
	
	if ($_POST['submit'] == 'Login'){
		$Loguser = new user();
		$Loguser->email=$_POST['email'];
		$Loguser->pwd=$_POST['pwd'];
	
		$count = "";
		$count = $Loguser->login();
		$_SESSION['user']=$_POST['email'];
		if ($count == 1) 
		{
		 		//set session
				if (!isset($_session['use']))
				{
					header("location:welcome.php");
					die;
				}
				
		}
		 	
				else{
					$msglog = '<div class ="alert alert-danger">The email or password is incorrect</div>';
					
				}
	
	}	
	if ($_POST['submit'] == 'contact' ) {
				$contact = new user();
				$contact->name=$_POST['name'];
				$contact->email=$_POST['email'];
				$contact->subject=$_POST['subject'];
				$contact->message=$_POST['message']; 
				$contact->message();
	}		
		
	

}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>FreeSquad</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">

    <!-- Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="css/animate.css" rel="stylesheet" />
    <!-- Squad theme CSS -->
    <link href="css/style.css" rel="stylesheet">
	<link href="color/default.css" rel="stylesheet">
    
    <!-- =======================================================
        Theme Name: Squadfree
        Theme URL: https://bootstrapmade.com/squadfree-free-bootstrap-template-creative/
        Author: BootstrapMade
        Author URL: https://bootstrapmade.com
    ======================================================= -->

</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-custom">
	<!-- Preloader -->
	<div id="preloader">
	  <div id="load"></div>
	</div>

    <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="index.html">
                    <h1>SQUAD FREE</h1>
                </a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#intro">Home</a></li>
        <li><a href="#sign">Sign in</a></li>
        <li><a href="#about">About</a></li>
		<li><a href="#service">Service</a></li>
		<li><a href="#contact">Contact</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Others <b class="caret"></b></a>
          <ul class="dropdown-menu">
            <li><a href="#">Songs</a></li>
            <li><a href="#">Videos</a></li>
            <li><a href="#">News</a></li>
          </ul>
        </li>
      </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

	<!-- Section: intro -->
    <section id="intro" class="intro">
	
		<div class="slogan">
			<h2>WELCOME TO THE <span class="text_color">SQUAD</span> </h2>
			<h4>WE ARE GROUP OF GENTLEMEN MAKING AWESOME WEB WITH BOOTSTRAP</h4>
		</div>
		<div class="page-scroll">
			<a href="#service" class="btn btn-circle">
				<i class="fa fa-angle-double-down animated"></i>
			</a>
		</div>
    </section>
	<!-- /Section: intro -->

	<!-- Section: sign in -->
	<p></p>
	<section id="sign">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="col-lg-8">
						<h2 style="text-align: left;">Sign up Form</h2>
						<form method="post" action="index.php" >
							<?php  echo $msgreg; $msgreg = ""; ?>
						
							<div class="form-group">
					
									<div class="col-lg-4" >
									<input type="text"  class="form-control" name="firstname" placeholder="FirstName" required>
									
									</div>
									<div class="col-lg-4">
										<input type="text" class="form-control" name="lastname" placeholder="LastName" required>
										
									</div>
							
								
							</div>
							<div class="form-group">
								<div class="col-lg-8" style="margin-right: 30px;">
									<br><input type="email" class="form-control" name="email" placeholder="Your Email for verification" required>
								</div>
								
							</div>

							<div class="form-group">
								<div class="col-lg-4">
											<br><input type="password" class="form-control" name="pwd" placeholder="password" required>
										
										</div>
								
								
										<div class="col-lg-4">
											<br><input type="password" class="form-control" name="confirm_password" placeholder="Confirm password" required>
										
										</div>
									<div class="form-group">
										<div class="col-lg-8">
												<br><input type="hidden" class="form-control" name="submit" value="reg" >
											<button class="btn btn-success col-lg-12">Register</button>
										</div>
											
									</div>
									
									
							</div>
						</form>	

					</div>
					<!-- <div class="col-lg-4">
						<h2 >Login Here</h2>
						<form action="index.php" method="post">
						<?php  echo $msglog; $msglog=""; ?>
						  <div class="form-group"> 
								<input type="email" class="form-control" name="email" placeholder="Your Email">
							</div>		
							<div class="form-group">
								<input type="password"  class="form-control" name="pwd" placeholder="Your password">
							</div>	
							<div class="form-group">
								<div class="checkbox">
									<label><input type="checkbox">Remember me</label>
								</div>
							</div>

							<div class="form-group">
									<br><input type="submit" class="form-control btn btn-info" name="Login">
									<input type="hidden" class="form-control" name="submit" value="Login" >
							</div>
						
						</form>
					</div> -->
				</div>

	</section>

	

	<!-- Section: about -->
    <section id="about" class="home-section text-center">
		<div class="heading-about">
			<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow bounceInDown" data-wow-delay="0.4s">
					<div class="section-heading">
					<h2>About us</h2>
					<i class="fa fa-2x fa-angle-down"></i>

					</div>
					</div>
				</div>
			</div>
			</div>
		</div>
		<div class="container">

		<div class="row">
			<div class="col-lg-2 col-lg-offset-5">
				<hr class="marginbot-50">
			</div>
		</div>
        <div class="row">
            <div class="col-md-6">
				<div class="wow bounceInUp" data-wow-delay="0.2s">
                <!-- <div class="team boxed-grey"> -->
                    <div class="pull-left">
						<h5>Popoola Kunle</h5>
                        <p class="subtitle">Pixel Crafter</p>
                        <div class="avatar"><img src="main.jpg" alt="" class="img-responsive img-circle" height="105" width="300"></div>
                    </div>
               <!--  </div> -->
				</div>
            </div>
			<div class="col-md-6">
				<div class="wow bounceInUp" data-wow-delay="0.5s">
               <!--  <div class="team boxed-grey"> -->
                    <div class="pull-right">
						<h5>Popoola David</h5>
                        <p class="subtitle">Website Developer</p>
                        <div class="avatar"><img src="upper_hand.jpg" alt="" class="img-responsive img-circle" height="105" width="300"></div>

                    </div>
                <!-- </div> -->
				</div>
            </div>
			<!-- <div class="col-md-3">
				<div class="wow bounceInUp" data-wow-delay="0.8s">
                <div class="team boxed-grey">
                    <div class="inner">
						<h5>Jack Briane</h5>
                        <p class="subtitle">jQuery Ninja</p>
                        <div class="avatar"><img src="img/team/3.jpg" alt="" class="img-responsive img-circle" /></div>

                    </div>
                </div>
				</div>
            </div>
			<div class="col-md-3">
				<div class="wow bounceInUp" data-wow-delay="1s">
                <div class="team boxed-grey">
                    <div class="inner">
						<h5>Tom Petterson</h5>
                        <p class="subtitle">Typographer</p>
                        <div class="avatar"><img src="img/team/4.jpg" alt="" class="img-responsive img-circle" /></div>

                    </div>
                </div>
				</div>
            </div> -->
        </div>		
		</div>
	</section>
	<!-- /Section: about -->
	

	<!-- Section: services -->
    <section id="service" class="home-section text-center bg-gray">
		
		<div class="heading-about">
			<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow bounceInDown" data-wow-delay="0.4s">
					<div class="section-heading">
					<h2>Our Services</h2>
					<i class="fa fa-2x fa-angle-down"></i>

					</div>
					</div>
				</div>
			</div>
			</div>
		</div>
		<div class="container">
		<div class="row">
			<div class="col-lg-2 col-lg-offset-5">
				<hr class="marginbot-50">
			</div>
		</div>
        <div class="row">
            <div class="col-md-3">
				<div class="wow fadeInLeft" data-wow-delay="0.2s">
                <div class="service-box">
					<div class="service-icon">
						<img src="img/icons/service-icon-1.png" alt="" />
					</div>
					<div class="service-desc">
						<h5>Print</h5>
						<p>We offer the best pictures available to print and not to forget glorious images for wallpapers too.</p>
					</div>
                </div>
				</div>
            </div>
			<div class="col-md-3">
				<div class="wow fadeInUp" data-wow-delay="0.2s">
                <div class="service-box">
					<div class="service-icon">
						<img src="img/icons/service-icon-2.png" alt="" />
					</div>
					<div class="service-desc">
						<h5>Web Design</h5>
						<p>The best of the best is rendered here. Any design you imagined will be developed here.Contact us to bring the image to reality</p>
					</div>
                </div>
				</div>
            </div>
			<div class="col-md-3">
				<div class="wow fadeInUp" data-wow-delay="0.2s">
                <div class="service-box">
					<div class="service-icon">
						<img src="img/icons/service-icon-3.png" alt="" />
					</div>
					<div class="service-desc">
						<h5>Photography</h5>
						<p>You want to cover your event anywhere in world at any place. Contact us to get quality photos.</p>
					</div>
                </div>
				</div>
            </div>
			<div class="col-md-3">
				<div class="wow fadeInRight" data-wow-delay="0.2s">
                <div class="service-box">
					<div class="service-icon">
						<img src="img/icons/service-icon-4.png" alt="" />
					</div>
					<div class="service-desc">
						<h5>Cloud System</h5>
						<p>We have a strong believe that developers are rapping up at this age. Send your app and will be resourceful for world view.</p>
					</div>
                </div>
				</div>
            </div>
        </div>		
		</div>
	</section>
	<!-- /Section: services -->
	

	

	<!-- Section: contact -->
    <section id="contact" class="home-section text-center">
		<div class="heading-contact">
			<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow bounceInDown" data-wow-delay="0.4s">
					<div class="section-heading">
					<h2>Get in touch</h2>
					<i class="fa fa-2x fa-angle-down"></i>

					</div>
					</div>
				</div>
			</div>
			</div>
		</div>
		<div class="container">

		<div class="row">
			<div class="col-lg-2 col-lg-offset-5">
				<hr class="marginbot-50">
			</div>
		</div>
    <div class="row">
        <div class="col-lg-8">
            <div class="boxed-grey">
                
                <div id="sendmessage">Your message has been sent. Thank you!</div>
                <div id="errormessage"></div>
                <form id="contact-form" action="index.php" method="post" role="form" class="contactForm">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="name">
                                Name</label>
                            <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                            <div class="validation"></div>
                        </div>
                        <div class="form-group">
                            <label for="email">
                                Email Address</label>
                            <div class="form-group">
                                <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />
                                <div class="validation"></div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="subject">
                                Subject</label>
                            <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
                            <div class="validation"></div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="name">
                                Message</label>
                            <textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>
                            <div class="validation"></div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <button type="hidden" class="btn btn-skin pull-right" id="btnContactUs" name="submit" value="contact">
                            Send Message</button>
                    </div>
                </div>
                </form>
            </div>
        </div>
		
		<div class="col-lg-4">
			<div class="widget-contact">
				<h5>Main Office</h5>
				
				<address>
				  <strong>Squad Design, Inc.</strong><br>
				  18,Tunji Adeloye close<br>
				  Lagos State, Nigeria<br>
				  <abbr title="Phone">Phone:</abbr> (+234) 7033116499
				</address>

				<address>
				  <strong>Email</strong><br>
				  <a href="David:#">dvdpopoola@gmail.com</a>
				</address>	
				<address>
				  <strong>We're on social networks</strong><br>
                       	<ul class="company-social">
                            <li class="social-facebook"><a href="#" target="_blank"><i class="fa fa-facebook"></i></a></li>
                            <li class="social-twitter"><a href="#" target="_blank"><i class="fa fa-twitter"></i></a></li>
                            <li class="social-dribble"><a href="#" target="_blank"><i class="fa fa-dribbble"></i></a></li>
                            <li class="social-google"><a href="#" target="_blank"><i class="fa fa-google-plus"></i></a></li>
                        </ul>	
				</address>					
			
			</div>	
		</div>
    </div>	

		</div>
	</section>
	<!-- /Section: contact -->

	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-lg-12">
					<div class="wow shake" data-wow-delay="0.4s">
					<div class="page-scroll marginbot-30">
						<a href="#intro" id="totop" class="btn btn-circle">
							<i class="fa fa-angle-double-up animated"></i>
						</a>
					</div>
					</div>
					<p>&copy;SquadFREE. All rights reserved.</p>
                    <div class="credits">
                        <!-- 
                            All the links in the footer should remain intact. 
                            You can delete the links only if you purchased the pro version.
                            Licensing information: https://bootstrapmade.com/license/
                            Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Squadfree
                        -->
                        <a href="https://bootstrapmade.com/free-one-page-bootstrap-themes-website-templates/">My Page boostrap</a> by <a href="#">BootstrapMade</a>
                    </div>
				</div>
			</div>	
		</div>
	</footer>

    <!-- Core JavaScript Files -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.easing.min.js"></script>	
	<script src="js/jquery.scrollTo.js"></script>
	<script src="js/wow.min.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="js/custom.js"></script>
    <!-- <script src="contactform/contactform.js"></script> -->
    
</body>

</html>