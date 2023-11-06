<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>About Us</title>
        <link rel="stylesheet" href="Stylesheet.css" type="text/css" />
        <style>
            h1{
                color: brown;
                font-family: algerian;
                text-align: center;
                font-size: 40px;
            }
            p{
                font-size: 25px;
                margin-left: 15px;
                margin-right: 15px;
            }
        </style>
    </head>
    <body>
        <%@include file="Font Size.jsp"%>
        <%@include file="Header.jsp"%>
        <div class="Container">
            <h1>Introduction</h1>
            <p>“ONLINE VOTING SYSTEM” is an online voting technique. In this system people who have citizenship of India and whose age is above 18 years of age and any sex can give his\her vote online without going to any physical polling station.
There is a database which is maintained in which all the names of voters with complete information is stored. In “ONLINE VOTING SYSTEM” a voter can use his\her voting right online without any difficulty. He\She has to be registered first for him/her to vote.
The system Administrator registers the voters on a special site of the system visited by him only by simply filling a registration form to register voter.
Citizens seeking registration are expected to contact the system administrator to submit their details. After the validity of them being citizens of India has been confirmed by the system administrator by comparing their details submitted with those in existing databases such as those as the Registrar of Persons, the citizen is then registered as a voter. After registration, the voter is assigned a secret Voter ID with which he/she can use to log into the system and enjoy services provided by the system such as voting. If invalid/wrong details are submitted, then the citizen is not registered to vote.
</p>
        </div>
        <%@include file="Footer.jsp"%>
    </body>
</html>
