<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>welcome Admin</title>
        <link rel="stylesheet" href="Stylesheet.css" type="text/css"/>
        <style>
            .Aside_l{
                margin-left: 15pc;
                background-color: #Bc5d2D;
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
            .Aside_l a:hover{
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
            }
        </style>
    </head>
    <body>
        
        <%
                response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
                if(session.getAttribute("adminuserpass")==null){
                       session.getAttribute("adminuserpass");
                       response.sendRedirect("Homepage.jsp");
                }
        %>
        
        <%@include file="Font Size.jsp"%>
        <%@include file="Header.jsp"%>
        
        <h1> Welcome   <%=session.getAttribute("adminuserpass")%></h1>
        <div class="Aside_l">
            <div class="Left">
                <h1>Candidate Section</h1>
                <br/><a href="Register Candidate.jsp">Add Candidate</a><br/><br/><br/><br/>
                <a href="ViewCandidate">View Candidates</a><br/><br/><br/><br/>
            </div>
            <div class="Right">
                <h1>Voter Section</h1>
                <br/><a href="Register Voter.jsp">Add Voter</a><br/><br/><br/><br/>
                <a href="ViewVoter">View Voters</a><br/><br/><br/><br/>
                <a href="Party Master.jsp">Add Party</a><br/><br/><br/><br/>
                <a href="ViewParty">View Parties</a><br/><br/><br/><br/>
            </div>
            <div class="Bottom">
                <h1>Declaration Section</h1>
                <br/><a href="Result.jsp">Declare Result</a><br/><br/><br/><br/>
                <a href="Report.jsp">Report Generation</a><br/><br/><br/><br/>
                <form action="AdminLogout" method="post">
                    <input type="submit" value="Logout">
                </form>
            </div>
        </div>
        <%@include file="Footer.jsp"%>
    </body>
</html>
