<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="style/product.css">
        <title>Maw & Paw</title>
</head>
<body>
    <div id="head" style="margin: 20px;">
        <img src="Logo12.png" alt="logo" style="width: 140px; height: 140px; float: left;">
        <h1>Welcome,<%=session.getAttribute("name")%></h1>

        <ul class="navi">
                <li><img src="icon/bell.png" style="width: 20px; height: 20px; padding-right: 5px">Notification</li>
                <li><img src="icon/help1.png" style="align: center; width: 20px; height: 20px; padding-right: 5px">Help</li>
                <li><img src="icon/cart.png" style="width: 20px; height: 20px; padding-right: 5px"><a href="viewcart.jsp">Shopping Cart</a></li>
                <li><img src="icon/person.png" style="width: 20px; height: 20px; padding-right: 5px"><a href="logout_user.jsp">Sign Out</a></li>
        </ul>
        <br></br>

    </div>
    
    <div id="left">
	<h2 class="trans">MENU</h2>
	<u1 class= "menu" >
            <li class="cata">CATALOG</li>
                    <p><a href="viewcollar.jsp">Collar</a></p>
                    <p><a href="viewcloth.jsp">Cloth</a></p>
                    <p style="margin-bottom: 25px;"><a href="viewleash.jsp">Leash</a></p>
		
	</ul>
    </div>
        
    <div id="center">   

        <div class="slideshow-container">

            <div class="mySlides fade">
              <div class="numbertext">1 / 3</div>
              <img src="picture/cat3.png">
            </div>

            <div class="mySlides fade">
              <div class="numbertext">2 / 3</div>
              <img src="picture/cat4.png">
            </div>

            <div class="mySlides fade">
              <div class="numbertext">3 / 3</div>
              <img src="picture/collar2.png">
            </div>

            <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
            <a class="next" onclick="plusSlides(1)">&#10095;</a>

            </div>
            <br>

            <div style="text-align:right; padding-right: 10%;">
              <span class="dot" onclick="currentSlide(1)"></span> 
              <span class="dot" onclick="currentSlide(2)"></span> 
              <span class="dot" onclick="currentSlide(3)"></span> 
            </div>
        
            <script>
                var slideIndex = 1;
                showSlides(slideIndex);

                function plusSlides(n) {
                  showSlides(slideIndex += n);
                }

                function currentSlide(n) {
                  showSlides(slideIndex = n);
                }

                function showSlides(n) {
                  var i;
                  var slides = document.getElementsByClassName("mySlides");
                  var dots = document.getElementsByClassName("dot");
                  if (n > slides.length) {slideIndex = 1}    
                  if (n < 1) {slideIndex = slides.length}
                  for (i = 0; i < slides.length; i++) {
                      slides[i].style.display = "none";  
                  }
                  for (i = 0; i < dots.length; i++) {
                      dots[i].className = dots[i].className.replace(" active", "");
                  }
                  slides[slideIndex-1].style.display = "block";  
                  dots[slideIndex-1].className += " active";
                }
            </script>
        
            </div>
    <div id="footer">
        <h3>Right reserved: Maw & Paw Pet Accessories Corp</h3>
    </div>
</body>
</html>
