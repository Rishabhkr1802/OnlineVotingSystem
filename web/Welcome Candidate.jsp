<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>welcome Candidate</title>
        <link rel="stylesheet" href="Stylesheet.css" type="text/css"/>
        <style>
            .Aside_l{
                margin-left: 15pc;
                background-color: #ff253D;
                border: 1px solid black;
                padding: 40px;
                width: 50pc;
                text-align: center;
                box-shadow: 4px 5px 6px blue,-4px -5px 6px yellow;
            }
            .Aside_l a{
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
            .Aside_l input[type=submit]{
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
            .Aside_l a:hover{
                background-color: dodgerblue;
                color: white;
            }
            .Aside_l input[type=submit]:hover{
                background-color: dodgerblue;
                color: white;
            }
            h1{
                text-align: center;
                font-size: 50px;
                font-family: algerian;
                color: yellow;
                text-shadow: 3px 4px 1px black,-3px -4px 1px black;
            }
        </style>
    </head>
    <body>
        <%
            response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
                if(session.getAttribute("Candemailpass")==null){
                       session.getAttribute("Candemailpass");
                       response.sendRedirect("Homepage.jsp");
                }
        %>
        <%@include file="Font Size.jsp"%>
        <%@include file="Header.jsp"%>
        
        <h1> Welcome </h1>
        <div class="Aside_l">
             <br/><a href="Voting Poll.jsp">Add Vote</a><br/><br/><br/><br/>
             <a href=" ">Add Poll</a><br/><br/><br/><br/>
            <a href="Result.jsp">Check Result</a><br/><br/><br/><br/>
            <form action="CandidateLogout" method="post">
                <input type="submit" value="Logout"/>
            </form>
        </div>
        <%@include file="Footer.jsp"%>
    </body>
</html>
