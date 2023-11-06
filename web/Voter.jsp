<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Voter Details</title>
        <link rel="stylesheet" href="Stylesheet.css" type="text/css"/>
        <style>
            .Container{
                margin-left: 15pc;
                background-color: #fff123;
                border: 1px solid black;
                padding: 40px;
                width: 50pc;
                text-align: center;
                box-shadow: 4px 5px 6px blue,-4px -5px 6px red;
            }
            .Container a{
                text-decoration: none;
                font-size: 40px;
                font-family: forte;
                color: dodgerblue;
                background-color: aquamarine;
                padding: 18px;
                border-radius: 30px;
                text-shadow: 3px 4px 5px black,-3px -4px 5px black;
                border: 1px solid black;
            }
            .Container a:hover{
                background-color: dodgerblue;
                color: white;
            }
            h1{
                text-align: center;
                font-size: 40px;
                font-family: algerian; 
                color: aqua;
                text-shadow: 3px 4px 5px black,-3px -4px 5px black;
            }
        </style>
    </head>
    <body>
        <%@include file="Font Size.jsp"%>
        <%@include file="Header.jsp"%>
        <h1> Voter's</h1>
        <div class="Container">
            <br/><a href="Register Voter.jsp">Register as a new Voter</a><br/><br/><br/><br/>
            <a href="Voter Login.jsp">Voter Login</a><br/><br/><br/>
        </div>
        <%@include file="Footer.jsp"%>
    </body>
</html>
