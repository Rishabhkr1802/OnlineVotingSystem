<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="Stylesheet.css" type="text/css"/>
        <style>
            .Aside_l,.Aside_r{
                background-color: dodgerblue;
                border-radius: 10px;
                margin: 20px;
                width: 22pc; 
                text-align: center;
                border: .5px solid  yellow;
                box-shadow: 8px 8px 5px red,-8px -8px 5px black;
            }
            .Aside_l,.Aside_c,.Aside_r{
                display: inline-table;
            }
            .Aside_r{
                float: right;
                height: 13pc;
            }
            a{
                text-decoration: none;
                font-size: 40px;
                font-family: forte;
                margin-right: 10px;
                padding: 12px;
                color: black;
            }
            a:hover{
                background:black;
                font-size: 50px;
                border-radius: 30px;
                color: white;
            }
            .Animation{
                color: red;
            }
            #Asterisk{
                font-size: 35px;
                color: red;
                text-shadow: 2px 2px 4px red;
            }
            .Aside_c h1{
                text-align: center;
                color: aqua;
                font-family: algerian;
                text-shadow: 3px 4px 5px black,-3px -4px 5px black;
            }
            .Aside_c p{
                font-size: 16px;
                color: navy;
                font-size: 18.1px;
                text-shadow: -1px -1px 6px black;
            }
        </style>
    </head>
    <body>
        <%@include file="Font Size.jsp"%>
        <%@include file="Header.jsp"%>
        <div class="Animation">
            <marquee dir="left"><h1>Welcome to an Online Voting System</h1></marquee>
        </div>
        <div class="Container">
            <div class="Aside_l">
                <br/><br/><a href="Homepage.jsp"> Home </a><br/><br/>
                <a href="Voter.jsp"> Voter </a><br/><br/>
                <a href="Candidate Login.jsp"> Candidate </a><br/><br/>
                <a href="Admin Login.jsp"> Administration </a><br/><br/>
            </div>
            <div class="Aside_c">
                <h1>Objectives</h1>
                <p><span id="Asterisk">*</span>&nbsp The objective of Online voting system is to help the organization in <br/>&nbsp &nbsp &nbsp automating the whole manual processing of the existing system.</p>
                <p><span id="Asterisk">*</span>&nbsp System should support multi-user environment.</p>
                <p><span id="Asterisk">*</span>&nbsp System should be fully automated.</p>
                <p><span id="Asterisk">*</span>&nbsp System should provide concrete security features like creating users <br/>&nbsp &nbsp &nbsp and assigning privileges to users of the system.</p>
                <p><span id="Asterisk">*</span>&nbsp System should be capable to keep track of all the detailed descriptions <br/>&nbsp &nbsp &nbsp of the client and the whole details of services offered by the <br/>&nbsp &nbsp &nbsp client organization.</p>
            </div>
            <div class="Aside_r">
                <br/><br/><a href="Contact Us.jsp"> Contact Us </a><br/><br/>
                <a href="About Us.jsp"> About Us </a><br/><br/>
            </div>
            <div class="">
                
            </div>
        </div>
        <%@include file="Footer.jsp"%>
    </body>
</html>
