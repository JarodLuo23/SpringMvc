<%--
  Created by IntelliJ IDEA.
  User: ljw
  Date: 2021/7/11
  Time: 5:23 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Video Post</title>
    <script src="js/jquery-1.12.1.min.js"></script>
    <link rel="stylesheet" href="css/jquery-ui.css">
    <script src="js/jquery-1.12.1.min.js"></script>
    <script type="text/javascript" src="js/jquery-ui.min.js" ></script>

    <link rel="stylesheet" href="//apps.bdimg.com/libs/jqueryui/1.10.4/css/jquery-ui.min.css">
    <script src="//apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="//apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
    <link rel="stylesheet" href="jqueryui/style.css">
    <script type="text/javascript">
        function movie1() {
            $(document).ready(function () {
                $("#show").attr("src", "img/movie/movies01.jpg");
                $("#content").text("Active Movie");
            });
        }
        function movie2() {
            $(document).ready(function () {
                $("#show").attr("src", "img/movie/movies02.jpg");
                $("#content").text("Romantic Movie");
            });
        }
        function movie3() {
            $(document).ready(function () {
                $("#show").attr("src", "img/movie/movies03.jpg");
                $("#content").text("Suspense Movie");
            });
        }
        function movie4() {
            $(document).ready(function () {
                $("#show").attr("src", "img/movie/movies04.jpg");
                $("#content").text("Comedy Movie");
            });
        }
        function movie5() {
            $(document).ready(function () {
                $("#show").attr("src", "img/movie/movies05.jpg");
                $("#content").text("Family Movie");
            });
        }
        $(function() {
            $( "#accordion" ).accordion();
        });
    </script>
    <style>

    </style>
</head>
<body>
<div align="center">
    <input type="button" value="Black Panther" onclick="movie1()" style="font-size: 17px;border-radius: 14px;"/>
    <input type="button" value="Ce Of Entro" onclick="movie2()" style="font-size: 17px;border-radius: 14px;"/>
    <input type="button" value="Coming Soon" onclick="movie3()" style="font-size: 17px;border-radius: 14px;"/>
    <input type="button" value="Handmaiden" onclick="movie4()" style="font-size: 17px;border-radius: 14px;"/>
    <input type="button" value="The Silence Of Lamps"onclick="movie5()" style="font-size: 17px;border-radius: 14px;"/>
<br><br><br>
<div>
    <img id="show"/>
    <h3 id="content"></h3>
</div>
    <div id="accordion" style="padding-left: 200px;padding-right: 200px">
        <h3>Part 1</h3>
        <div>
            <p>
                Baadshah is a smart and witty private investigator who has been able to successfully complete missions with the help
                of a group of friends. But in a "scam" mission, he gave his heart to a girl named seema, but because of a misunderstanding,
                the two have not been able to get together. Suraj Singh Thaper is a black-hearted businessman who killed and injured 500
                employees in his factory in order to make money. Gayetri Bachchan is a government official who thinks about the people. For
                the people, she wants to close the factory in Suraj Singh Thaper. Suraj Singh Thaper became angry and decided to send someone
                to assassinate Gayetri Bachchan. He decided to let the assassins replace the CBI agent who was supposed to protect Mrs. Gayetri
                Bachchan. At the same time, Baadshah also received a mission in Goa, where the assassination occurred. Originally, the two
                groups of people did not overlap, but because the CBI agent's code name was also called "Baadshah", a lot of incidents occurred.
                In the end, Baadshah not only completed his mission, but also resolved the political assassination, and at the same time returned
                to the beauty.
            </p>
        </div>
        <h3>Part 2</h3>
        <div>
            <p>
                Five women, five lifestyles that could not be any different: her career at an agency takes top priority for business woman Fe,
                even over her relationship. Charlie, a single Mom raising a three year-old daughter remains the "permanent" intern and
                hairdresser Mandy is a chocoholic longing to be skinny and dreaming of a man to settle down with, whereas single lady
                Frieda meets men daily but stomps out any emotions before they even arise due to her fear of commitment. And then there
                is Karo, the mother hen, who discovers that her husband is seeing another woman. Or is he? The five stories of these women all
                tell a tale of life in Berlin. Strange at times, desperate too, and even tragic - yet in the end, they all find a new
                perspective on life.
            </p>
        </div>
    </div>
</div>
<button style="font-size: 17px;border-radius: 14px;margin-left: 800px;margin-top: 20px;" ><a href="index.jsp">Back</a></button>
</body>
</html>
