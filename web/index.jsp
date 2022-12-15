<%@ page import="bean.User" %>
<%@ page import="dao.SigninDao" %><%--
  Created by IntelliJ IDEA.
  User: ljw
  Date: 2021/5/27
  Time: 6:52 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
  <meta charset="UTF-8">
  <title>Moive Website</title>
  <link rel="stylesheet" href="css/bootstrap.css">
  <link rel="stylesheet" href="css/bootstrap-theme.css">
  <link rel="stylesheet" href="css/style.css" >
    <link rel="stylesheet" href="css/jquery-ui.css">
    <script type="text/javascript" src="js/jquery-ui.min.js"></script>
  <script src="js/jquery-1.12.1.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script type="text/javascript">
    function checkprofile(){
      <%--if (("${sessionScope.data.username}")==null){--%>
      <%--  window.alert("Please login in first!!");--%>
      <%--}else {--%>
      <%--  window.location.href="profile.jsp";--%>
      <%--}--%>

<%--        <% Cookie[] cookies= request.getCookies();--%>
<%--        SigninDao dao=new SigninDao();--%>
<%--        if(cookies== null){--%>
<%--            String un=null,upw=null;--%>
<%--            for (Cookie c:cookies){--%>
<%--                if (c.getName().equals("uncookie")){--%>
<%--                     un=c.getValue();--%>
<%--                }--%>
<%--                if (c.getName().equals("upwdcookie")){--%>
<%--                     upw=c.getValue();--%>
<%--                }--%>
<%--                User user=new User(un,upw);--%>
<%--                System.out.println("1212");--%>
<%--        session.setAttribute("data",dao.showprofile(user));--%>
<%--            }--%>
<%--        }--%>
<%--        %>--%>

<%--      <%--%>
<%--      if (session.getAttribute("data")==null){--%>
<%--      %>--%>
<%--      window.alert("Please login in first!!");--%>
<%--      <% }else {%>--%>
<%--      window.location.href="profile.jsp";--%>
<%--        <%}%>--%>

    }
    <%--function deletecookie(){--%>
    <%--    <%--%>
    <%--    System.out.println("22222");--%>
    <%--        for (Cookie c:cookies){--%>
    <%--            c.setMaxAge(0);--%>
    <%--            response.addCookie(c);--%>
    <%--            System.out.println("Delete cookies successful");--%>
    <%--        }--%>
    <%--    %>--%>
    <%--}--%>
    $( "#show-option" ).tooltip({
        show: {
            effect: "slideDown",
            delay: 250
        }
    });

  </script>
<%--  <%--%>
<%--  User userSession=(User) session.getAttribute("data");--%>
<%--  if(userSession == null || userSession.getUsername().equals("")){--%>
<%--  out.print("<script type='text/javascript'>alert('您尚未登录或者超时');</script>");--%>
<%--  out.print("<script type='text/javascript'>location.href='../login.jsp'</script>");--%>
<%--  }--%>
<%--  %>--%>
</head>


<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
<%--      <a class="navbar-brand" href="#" >Movie</a>--%>
    </div>

    <div class="row">


    <div id="navbar" class="navbar-collapse collapse" >
      <div class="col-lg-2">
        <img src="img/logo.png" class="img-responsive" alt="Responsive image" style="max-width: 30%">
      </div>
  <ul class="nav navbar-nav col-lg-6 col-lg-push-1" >
    <li><a href="index.html">Home</a></li>
    <li><a href="video_post.jsp">Video Post</a></li>
    <li><a href="movie.jsp">Movie</a></li>
    <li><a href="single-page-with-img.html">TV Show</a></li>
<%--    <li><a href="login.html">Login</a></li>--%>
  </ul>
      <ul class="nav navbar-nav col-lg-4 col-lg-push-2 ">
<%--        <li><a href="signup.jsp">Login</a></li>--%>
        <li><a href="/Createcookies" onclick="checkprofile()" title="Show your profile" id="show-option" class="glyphicon glyphicon-user" aria-hidden="true"></a></li>
        <li><a href="c" >Log out/login</a></li>
      </ul>
    </div><!--/.navbar-collapse -->

  </div>
  </div>
</nav>

<!-- Main jumbotron for a primary marketing message or call to action -->
<div class="jumbotron" style="padding-left: 0px;padding-right: 0px">
  <div class="container" style="background-image: url(img/index/movie-poster-bg.jpg);width: 100%;height: 760px;" >
<%--      <img src="img/index/movie-poster-bg.jpg" style=" background-repeat:no-repeat;height: auto;">--%>
    <div class="container" id="t" data-swiper-parallax="200">
    <h6 class="toptext">NEW RELEASES</h6>
    <h2 class="moviename">The History of <br>
    <strong>Ottomans</strong></h2>
    <ul class="features">
        <li>
            <div class="rate">
                <svg class="circle-chart" viewBox="0 0 30 30" width="40" height="40" xmlns="http://www.w3.org/2000/svg">
                    <circle class="circle-chart__background" stroke="#2f3439" stroke-width="2" fill="none" cx="15" cy="15" r="14"></circle>
                    <circle class="circle-chart__circle" stroke="#4eb04b" stroke-width="2" stroke-dasharray="50,100" cx="15" cy="15" r="14"></circle>
                </svg>
                <div id="num">5.4</div> <div id="score">IMDB SCORE</div> </div>
            <!-- end rate -->
        </li>
        <li>
            <div class="year" id="years">2020</div>
        </li>
        <li>
            <div class="text-center">1080 <div class="hd">HD</div></div>
        </li>
        <li>
            <div class="tags">Romance, Action</div>
        </li>
    </ul>
    <p class="description">From attending the prom with her girlfriend, Alyssa<br>
        When Dee Dee and Barry decide that Emma's </p>
    <a href="movie-single.html" class="play-btn">PLAY MOVIE</a> <a href="account.html" class="add-btn">+</a> </div>
<%--    <p>This is a template for a simple marketing or informational website. It includes a large callout called a jumbotron and three supporting pieces of content. Use it as a starting point to create something more unique.</p>--%>
<%--    <p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more »</a></p>--%>
  </div>
</div>

<div class="container">
  <!-- Example row of columns -->
  <div class="row">
      <div class="col-12">
          <div class="section-title">
              <h6>ONLINE STREAMING</h6>
              <h2>Watch Shows Online</h2>
          </div>
          <!-- end section-title -->
      </div>
<%--      picture1--%>
      <div class="col-lg-3 col-sm-6">
          <div class="category-thumb">
              <figure class="category-image"> <img src="img/index/serial-category01.jpg" alt="Image"> </figure>
              <div class="category-content">
                  <h3 class="name">Thinking You</h3>
                  <span class="glyphicon glyphicon-play" aria-hidden="true"></span>
<%--                  <div class="play-btn"><a href="movie-single.html">+</a></div>--%>
                  <small class="details">SEASON 1 <span>-</span> 2020</small> </div>
              <!-- end category-content -->
          </div>
          <!-- end category-thumb -->
      </div>
<%--      picture2--%>
      <div class="col-lg-3 col-sm-6">
          <div class="category-thumb">
              <figure class="category-image"> <img src="img/index/serial-category02.jpg" alt="Image"> </figure>
              <div class="category-content">
                  <h3 class="name">Civil War</h3>
                  <span class="glyphicon glyphicon-play" aria-hidden="true"></span>
                  <small class="details">SEASON 2 <span>-</span> 2020</small> </div>
              <!-- end category-content -->
          </div>
          <!-- end category-thumb -->
      </div>
<%--      picture3--%>
      <div class="col-lg-3 col-sm-6">
          <div class="category-thumb">
              <figure class="category-image"> <img src="img/index/serial-category03.jpg" alt="Image"> </figure>
              <div class="category-content">
                  <h3 class="name">Best Game</h3>
                  <span class="glyphicon glyphicon-play" aria-hidden="true"></span>
                  <small class="details">SEASON 5 <span>-</span> 2020</small> </div>
              <!-- end category-content -->
          </div>
          <!-- end category-thumb -->
      </div>
<%--      piture4--%>
      <div class="col-lg-3 col-sm-6">
          <div class="category-thumb">
              <figure class="category-image"> <img src="img/index/serial-category04.jpg" alt="Image"> </figure>
              <div class="category-content">
                  <h3 class="name">Antoshka</h3>
                  <span class="glyphicon glyphicon-play" aria-hidden="true"></span>
                  <small class="details">SEASON 8 <span>-</span> 2020</small> </div>
              <!-- end category-content -->
          </div>
          <!-- end category-thumb -->
      </div>
  </div>
</div>
  <hr>

  <footer>
    <p>© 2021 Company,Jarod.</p>
  </footer>
</div> <!-- /container -->
</body>

</html>
