<!DOCTYPE html>
    <html> 
<!--head-->	
      
	   <head>
	   <meta charset="UTF-8">
	   
	   <title>Udruzenje ljubitelja zdravog zivota "ANABAS"</title>
	   
	   
	   <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,400i,700,700i&amp;subset=latin-ext" rel="stylesheet" type='text/css'>
	   <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	   <link href="css/style.css" rel="stylesheet" type="text/css">
	   <link href="lightbox/css/lightbox.min.css" type="text/css" rel="stylesheet">
	   
	     <script
           src="https://code.jquery.com/jquery-1.12.4.min.js"
           integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ="
           crossorigin="anonymous">
		 </script>
		 <script type="text/javascript">    
	/* javascript za prikaz dugmeta - povratak na vrh - u donjem desnom uglu */
	$(document).ready(function() {
		$(window).on("scroll", function() {
			var odVrha = $(window).scrollTop();
			$("#topLink").toggleClass("down", (odVrha > 300));
		});
	});
		
</script>

<script>
/* javascript za dinamički prikaz navigacije (sakrivanje/prikazivanje) na mobilnim uređajima */
	
$(document).ready(function() {
		
	var respmenu 		= $('#respmenu');
	var	menu 			= $('#nav>ul');

	$(respmenu).on('click', function(e) {
		e.preventDefault();
		menu.slideToggle();
	});
	
	$(window).resize(function(){
		var sirina = $(window).width();
		if(sirina > 768 && menu.is(':hidden')) {
			menu.removeAttr('style');
		}	
	});
	
});
</script>	
	
	<script type="text/javascript">
	/* javascript za postepeni (smooth scroll) - ovaj deo koda je sa sajta css-tricks */
	$(function() {
	  $('a[href*=#]:not([href=#])').click(function() {
	    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {

	      var target = $(this.hash);
	      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
	      if (target.length) {
	        $('html,body').animate({
	          scrollTop: target.offset().top
	        }, 1000);
	        return false;
	      }
	    }
	  });
	});
</script>





	   </head>    
		   <body>
		   	
            <header id="header" class="negativ">
    
                 <div class="wrapper"> 
            <a href="#" class="logo"><img src="images/ivana logo-page-001.jpg" alt="logo"></a>
             
            
            <nav id="nav">
                <ul>
                    <li><a href="#header" class="dugme">Početna</a></li>
                    <li><a href="#drugi" class="dugme">O nama</a></li>
                    <li><a href="#about" class="dugme">Kontakt</a></li>
					<li><a href="login.php" class="dugme">Login</a></li>
					
                </ul>
                <a href="#" id="respmenu"></a>
            </nav>
		</div> 
		</header>
			

    
    
<section id="prvi" class="negativ">
   	
    	<div class="wrapper">
        	<h1>Fitness studio Ivana</h1>
        	<h2>Za dame svih uzrasta!</h2>
       	 	<p>Cras non maximus nunc. Nunc nec velit sit amet ex elementum porttitor ac non velit. Curabitur venenatis congue justo, quis ornare libero porta nec. Duis egestas turpis sit amet massa placerat, vitae faucibus ipsum pharetra. Proin tincidunt at lacus non cursus. Aenean ultricies fringilla lacus ac pulvinar. Praesent venenatis est in nulla scelerisque, eu tincidunt sem interdum. Cras ipsum ipsum, vestibulum nec dui malesuada, laoreet rhoncus odio. Etiam posuere aliquet leo, quis posuere est elementum porttitor. </p>
        	<p><a href="slike.php" class="dugme">Slike&nbsp;info&nbsp;&raquo;</a></p>
        </div>
    </section>
	
<section id="drugi">
    	
        <div class="wrapper">
        
            <h2>Lorem ipsum dolor sit amet</h2>
            <p>Donec tristique mollis tincidunt. Aliquam posuere vestibulum est id vehicula. Integer et massa vitae ipsum porttitor lobortis.</p>
            <p>Cras non maximus nunc. Nunc nec velit sit amet ex elementum porttitor ac non velit. Curabitur venenatis congue justo, quis ornare libero porta nec. Duis egestas turpis sit amet massa placerat, vitae faucibus ipsum pharetra.</p>
        
            <article class="tri">
            <a href="#">
                <img src="images/mala2.png" alt="tri1">
                <div class="triTekst">
                	<h2>Lorem ipsum</h2>
                	<p>Cras non maximus nunc. Nunc nec velit sit amet ex elementum porttitor ac non velit. Curabitur venenatis congue justo.</p>
                </div>
            </a>
            </article>
        
            <article class="tri">
            <a href="#">
                <img src="images/mala1.png" alt="tri2">
                <div class="triTekst">
                	<h2>Lorem ipsum</h2>
                	<p>Cras non maximus nunc. Nunc nec velit sit amet ex elementum porttitor ac non velit. Curabitur venenatis congue justo.</p>
                </div>
            </a>
            </article>
        
            <article class="tri">
            <a href="#">
                <img src="images/mala3.png" alt="tri3">
                <div class="triTekst">
                	<h2>Lorem ipsum</h2>
                	<p>Cras non maximus nunc. Nunc nec velit sit amet ex elementum porttitor ac non velit. Curabitur venenatis congue justo.</p>
                </div>
            </a>
            </article>
            
        </div>
        
    </section>
    
	<section id="idea" class="negativ">
    	<div class="wrapper">
		<h2>Idea</h2>
		
		<p>Donec tristique mollis tincidunt. Aliquam posuere vestibulum est id vehicula. Integer et massa vitae ipsum porttitor lobortis.</p>
            
        <iframe width="560" height="315" src="https://www.youtube.com/embed/rn3JEpkx5CM" frameborder="0" allowfullscreen></iframe>
		</div>
       
    </section>
   
    

	<section id="about">
	<div class="wrapper">
	<article class="tri1">
    	<div class="contactInfo">
		
		<h1 style="color:pink"><u>Kontakt:</u></h1>
                    <p><i class="fa fa-2x fa-phone"></i> Ivana , 060/013-00-83</p>
                    <p><i class="fa fa-2x fa-envelope"></i>tivana83@gmail.com</p>
                    <p><i class="fa fa-2x fa-facebook"></i><a href="https://www.facebook.com/Fitnes-Studio-Ivana-1482007802037040/?pnref=lhc" target="_blank">Fitness
					studio Ivana</a></p>
                    <p><i class="fa fa-2x fa-home"></i>Surčinska 95, 11178 Ledine, Novi Beograd, Srbija</p>
                <p><a href="contact.php" class="dugme">Ostavite&nbsp;poruku&nbsp;&raquo;</a></p>
    	 </div>
		 </article>
		 <article class="tri1">
		 <div id="map">
   <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d38088.94363644629!2d20.365995286731046!3d44.80164364463759!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x475a6f477598e055%3A0x36aebc01b676cb83!2sSur%C4%8Dinska+95%2C+Beograd%2C+Serbia!5e0!3m2!1sen!2s!4v1494704777505" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
   </div>
   </article>
   </div>
  
   </section>     
       
    <!-- pocetak sekcije sa video pozadinom videoback - bitan je id na ovoj sekciji, kao i id na video delu ispod -->
	      
       <?php
	   include_once 'includes/videoback.php';
	   ?>
		 
		   <footer id="footer" class="negativ">
    	<p>Copyright &copy; 2017 DC</p>
		
    </footer>
       <a href="#header" id="topLink">Back to TOP</a> 
    
      
	   
		   
		   </body>
		    
		   
		   
	</html>	   