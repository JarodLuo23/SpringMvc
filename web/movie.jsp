<%--
  Created by IntelliJ IDEA.
  User: ljw
  Date: 2021/7/14
  Time: 9:06 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Movie</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/bootstrap-theme.css">
    <link rel="stylesheet" href="css/style.css" >
    <link rel="stylesheet" href="css/jquery-ui.css">
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery-1.12.1.min.js"></script>
    <script type="text/javascript" src="js/jquery-ui.min.js"></script>


    <link rel="stylesheet" href="//apps.bdimg.com/libs/jqueryui/1.10.4/css/jquery-ui.min.css">
    <script src="//apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="//apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
    <link rel="stylesheet" href="jqueryui/style.css">
    <script type="text/javascript">
        $(document).ready(function (){
            $("#m1").attr("src","img/index/serial-category01.jpg");
            $("#m2").attr("src","img/index/serial-category02.jpg");
            $("#m3").attr("src","img/index/serial-category03.jpg");
            $("#m4").attr("src","img/index/serial-category04.jpg");

            $("#btn_show1").click(function (){
                $("#text1").show("slow");
            });
            $("#btn_hide1").click(function (){
                $("#text1").hide("slow");
            });
            $("#btn_show2").click(function (){
                $("#text2").show("slow");
            });
            $("#btn_hide2").click(function (){
                $("#text2").hide("slow");
            });
            $("#btn_show3").click(function (){
                $("#text3").show("slow");
            });
            $("#btn_hide3").click(function (){
                $("#text3").hide("slow");
            });
            $("#btn_show4").click(function (){
                $("#text4").show("slow");
            });
            $("#btn_hide4").click(function (){
                $("#text4").hide("slow");
            });

        });
        //
        // $.ajax({
        //     url: "json/movie.json",
        //     type: "GET",
        //     dataType: "json",
        //     success: function(data) {
        //         $.each(data.movie, function(i, item) {
        //             var str = '\n'+'MovieName: ' + item.moviename
        //                 +'\n'+'Type :'+ item.type+
        //                 '\n'+'Publish_time :'+ item.publishtime+ '\n'+'\n'+'\n'+'\n'+'\n';
        //             $("#content").append(str);
        //         })
        //     }
        // })
        $(function() {
            $( "#draggable" ).draggable({ revert: true });
        });

        $.ajax({
            url: "json/movie.json",
            type: "GET",
            dataType: "json",
            success: function(data) {
                $.each(data.movie, function(i, item) {
                    var str = '\n'+'MovieName: ' + item.moviename
                        +'\n'+'Type :'+ item.type+
                        '\n'+'Publish_time :'+ item.publishtime+ "<br>";
                    $("#content").append(str);
                })
            }
        })
    </script>
    <style>
        #draggable { background-color:dodgerblue;width: 150px; height: 70px; padding: 0.5em; float: left; margin: 0 10px 10px 760px; }
    </style>
</head>
<body>

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
                <figure class="category-image"> <img id="m1" alt="Image"> </figure>
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
                <figure class="category-image"> <img id="m2"  alt="Image"> </figure>
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
                <figure class="category-image"> <img id="m3" alt="Image"> </figure>
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
                <figure class="category-image"> <img id="m4" alt="Image"> </figure>
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
<div style="height: 100px">
<div style="float: left;margin-left: 340px;" >
    <input type="button" value="show" id="btn_show1" style="font-size: 17px;border-radius: 14px;"/>
    <input type="button" value="hide" id="btn_hide1" style="font-size: 17px;border-radius: 14px;"/>
    <p id="text1" style="margin-left: 10px;">Action Movie</p>
</div>
<div style="float: left;margin-left: 190px;">
    <input type="button" value="show" id="btn_show2" style="font-size: 17px;border-radius: 14px;"/>
    <input type="button" value="hide" id="btn_hide2" style="font-size: 17px;border-radius: 14px;"/>
    <p id="text2" style="margin-left: 17px;">War Movie</p>
</div>
<div style="float: left;margin-left: 190px;">
    <input type="button" value="show" id="btn_show3" style="font-size: 17px;border-radius: 14px;"/>
    <input type="button" value="hide" id="btn_hide3" style="font-size: 17px;border-radius: 14px;"/>
    <p id="text3">Technology Movie</p>
</div>
<div style="float: left;margin-left: 190px;">
    <input type="button" value="show" id="btn_show4" style="font-size: 17px;border-radius: 14px;"/>
    <input type="button" value="hide" id="btn_hide4" style="font-size: 17px;border-radius: 14px;"/>
    <p id="text4">Emotional Movie</p>
</div>
</div>
<h2 align="center">The detail of each movie</h2>
<div id="content" align="center"></div>
<button style="font-size: 17px;border-radius: 14px;margin-left: 800px;" ><a href="index.jsp">Back</a></button>
<br>
<div id="draggable" class="ui-widget-content">
    <p>You can drag me to the movie you like</p>
</div>
</body>
</html>
