<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Contact Successfully</title>
        <style>
            input[type=submit]{
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
            input[type=submit]:hover{
                background-color: dodgerblue;
                color: white;
        </style>
    </head>
    <body>
        <%
            response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
                if(session.getAttribute("ContactPerson")==null){
                       session.getAttribute("ContactPerson");
                       response.sendRedirect("Homepage.jsp");
                }
        
        %>
        <%@include file="Font Size.jsp"%>
        <%@include file="Header.jsp" %>
        <div class="Main">
            <h1 align="center">Thank You for Contacting Us.</h1>
        </div>
        <%@include file="Footer.jsp"%>
        <form action="ExitContactPerson" method="post">
            <input type="submit" value="Click Here to Continue...">
        </form>
    </body>
</html>
