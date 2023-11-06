<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Font Body</title>
        <script type="text/javascript">
             function ZoomPage(Param){
                var width;
                if(Param=='A'){
                    width= screen.width;
                    document.getElementById(Param).className=" fontfocus";
                    document.getElementById('A+').className="fontnormal";
                    document.getElementById('A-').className="fontnormal";
                }
                else if(Param=='A+'){
                    width= screen.width-50;
                    document.getElementById(Param).className="fontfocus";
                    document.getElementById('A-').className="fontnormal";
                    document.getElementById('A').className="fontnormal";
                }
                else if(Param=='A-'){
                width= screen.width+50;
                document.getElementById(Param).className="fontfocus";
                document.getElementById('A+').className="fontnormal";
                document.getElementById('A').className="fontnormal";
                }	
                document.body.style.zoom = screen.width/width;
                }
        </script>
        <link rel="stylesheet" href="Font Size Css.css" type="text/css"/>        <!--external stylesheet -->
    </head>
    <body>
        <div class="style">
            <div class="Date">
                <p class="text">Date: <%= (new java.util.Date()).toLocaleString()%></p> 
            </div>
            <div class="Screen">
                <p class="toprighttext toprighttextlink">Font Size : &nbsp &nbsp &nbsp
                        <a href='#' onclick="ZoomPage('A')" class='fontfocus' id='A' style="font-size: 20px;color: white;text-decoration: none;">A</a>| 
                        <a href="#"  onclick="ZoomPage('A-')" class='fontnormal' id='A-' style="font-size: 20px;color: white;text-decoration: none;">A-</a>| 
                        <a href="#"  onclick="ZoomPage('A+')" class='fontnormal' id='A+' style="font-size: 20px;color: white;text-decoration: none;">A+</a>&nbsp;&nbsp; 
            </div>
        </div>
    </body>
</html>