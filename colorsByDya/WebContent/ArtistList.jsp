<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" href="css/custom.css">
<h1>ColorLib Fine Arts</h1>

	<meta charset="ISO-8859-1">
	<title>Artist</title>
	
	
	
	
</head>
<body>
	  <div class="navbar">
        <a href="index2.jsp">Home</a><!--
        <a href="About_us.jsp">About Us</a>
        <a href="My_profile.jsp">My Profile</a>
        <a href="Exhibition.jsp">Exhibitions</a>
        <a href="gallery_option.jsp">Gallery options</a>
        <a onclick="location.href = 'Servlet_GalleryLogin'">Artwork</a>
        <a onclick="location.href = 'Servlet_AddPainting'">Upload Painting</a>
        <a onclick="location.href = 'requestLoginServlet'">Special Requests</a>
        <a onclick="location.href = 'NegoLoginServlet'">Negotiate Price Requests</a>
        <a href="frontpage.jsp">Logout</a>
        <a href="#" class="navbar1">
            <% HttpSession httpSession=request.getSession();
                                      String id = request.getParameter("email");
                                      httpSession.setAttribute("login1",id );
                                      out.println("hii "+httpSession.getAttribute("login1"));
                                      String a = (String)httpSession.getAttribute("login1");
     
     
      %>-->
        </a>
    </div>



  

        <div class="main-container">

            <!-- HEADER -->
            <header class="block">
                <ul class="header-menu horizontal-list">
                    <li>
                        <a class="header-menu-tab" onclick="location.href = 'Servlet_GalleryLogin'"><span class="icon entypo-cog scnd-font-color"></span>Painting List</a>
                    </li>
                    <li>
                        <a class="header-menu-tab" href="Artist.jsp"><span class="icon fontawesome-user scnd-font-color"></span>Artist Profile</a>
                    </li>
                    
                    <li>
                        <a class="header-menu-tab" href="index.jsp"><span class="icon fontawesome-star-empty scnd-font-color"></span>Log Out</a>
                    </li>
                </ul>
                
            </header>

            <!-- LEFT-CONTAINER -->
            <div class="left-container container">
                <div class="menu-box block"> <!-- MENU BOX (LEFT-CONTAINER) -->
                    <h2 class="titular">MENU BOX</h2>
                    <ul class="menu-box-menu">
                        <li>
                            <a class="menu-box-tab" onclick="location.href = 'Servlet_AddPainting'"><span class="icon entypo-paper-plane scnd-font-color"></span>Add  Painting<div class="menu-box-number"></div></a>                            
                        </li>
                        <li>
                            <a class="menu-box-tab" onclick="location.href = 'requestLoginServlet'"><span class="icon fontawesome-envelope scnd-font-color"></span>Special Requests<div class="menu-box-number"></div></a>                            
                        </li>
                        <li>
                            <a class="menu-box-tab" href="EventAllRetriv.jsp"><span class="icon entypo-calendar scnd-font-color"></span>Manage Events<div class="menu-box-number"></div></a>                            
                        </li>
                        <li>
                            <a class="menu-box-tab" href="DeliveryInsert.jsp"><span class="icon entypo-cog scnd-font-color"></span>Delivery</a>
                        </li>
                        <li>
                            <a class="menu-box-tab" href="#"><sapn class="icon entypo-chart-line scnd-font-color"></sapn>About </a>
                        </li>                        
                    </ul>
                </div>       
           
            </div>

            <!-- MIDDLE-CONTAINER -->
            <div class="middle-container container">
                <div class="profile block"> <!-- PROFILE (MIDDLE-CONTAINER) -->
                    <a class="add-button" href="#28"><span class="icon entypo-plus scnd-font-color"></span></a>
                    <div class="profile-picture big-profile-picture clear">
                        <img width="150px" alt="Anne Hathaway picture" src="./images/logo2.png" >
                    </div>
                    <h1 class="user-name">ARTIST</h1>
                    <div class="profile-description">
                        <p class="scnd-font-color">ColorLib Fine Arts</p>
                    </div>
                    <ul class="profile-options horizontal-list">
                        <li><a class="comments" href="#40"><p><span class="icon fontawesome-comment-alt scnd-font-color"></span>23</li></p></a>
                        <li><a class="views" href="#41"><p><span class="icon fontawesome-eye-open scnd-font-color"></span>841</li></p></a>
                        <li><a class="likes" href="#42"><p><span class="icon fontawesome-heart-empty scnd-font-color"></span>49</li></p></a>
                    </ul>
                </div>
              
                         
                </div>
               

            <!-- RIGHT-CONTAINER -->
            <div class="right-container container">
                <div class="join-newsletter block"> <!-- JOIN NEWSLETTER (RIGHT-CONTAINER) -->
                    <h2 class="titular">Send mail</h2>
                    <div class="input-container">
                        <input type="text" placeholder="it19977980@gmail.com" class="email text-input">
                        <div class="input-icon envelope-icon-newsletter"><span class="fontawesome-envelope scnd-font-color"></span></div>
                    </div>
                    <a class="subscribe button" href="#21"></a>
                </div>
               
            </div> <!-- end right-container -->
        </div> <!-- end main-container -->
    </body>
</html>


	

	
	
</body>
</html>