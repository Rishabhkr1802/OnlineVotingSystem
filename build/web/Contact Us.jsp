<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact Us</title>
        <link rel="stylesheet" href="Stylesheet.css" type="text/css"/>
        <style>
            .Container{
                background-color: #000;
                background-image: url('vote1.jpeg');
                background-repeat: no-repeat;
                margin: 20px;
                inline-box-align:  last;
                border-radius: 30px;
                background-size: auto;
            }
            legend{
                font-family: forte;
                text-align: center;
                color: navy;
                font-size: 40px;
                text-shadow: 3px 4px 6px red;
                border: 2px solid red;
                background-color: yellow;   
            }
            label{
                font-size: 35px;
                font-family: cooper;
                color: red;
                text-shadow: 3px 3px 8px black;
            }
            input[type=email],[type=text]{
                border-radius: 40px;
                height: 20px;
                text-align: center;
                box-shadow: 3px 3px 5px grey;
            }
            input[type=submit]{
                background-color: dodgerblue;
                padding: 10px;
                font-size: 30px;
                font-family: forte;
                color: white;
                text-shadow: 3px 4px 5px black,-3px -4px 5px black;
                border-radius: 30px;
                box-shadow: 4px 5px 6px navy,-4px -5px 6px red;
                margin-left: 38pc;
            }
            input[type=submit]:hover{
                background-color: navy;
                color: white;
                font-family: cooper;
                padding: 10px;
                box-shadow: 4px 5px 6px orange,-4px -5px 6px yellow;
            }
        </style>
    </head>
    <body>
        <%@include file="Font Size.jsp"%>
        <%@include file="Header.jsp"%>
        <div class="Container">
            <fieldset>
                <legend>Contact Us</legend>
                <form action="Suggestion" method="post">
                    <label for="name">Name : - </label><input type="text" name="C_name" placeholder="Enter Your Name..." size="70" required><br/><br/>
                    <label for="E-mail">E-mail : - </label><input type="email" name="C_email" placeholder="Enter Your e-mail..." size="70" required><br/><br/>
                    <label for="contactno">Contact No. :-</label><input type="text" name="C_contact" placeholder="Enter Your Contact No." size="70" required><br/><br/>
                    <label for="address">Address     :-</label><input type="text" name="C_add" placeholder="Enter Your Address..." size="70" required><br/><br/>
                    <label for="message">Message :-</label><input type="text" name="C_mess" placeholder="Suggestion" size="70" required><br/><br/>
                    <input type="submit" value=" Submit ">
                </form>
            </fieldset>
        </div>
        <%@include file="Footer.jsp"%>
    </body>
</html>
