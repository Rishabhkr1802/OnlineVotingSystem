<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
        <link rel="stylesheet" href="Stylesheet.css" type="text/css"/>
        <style>
            input[type=submit]{
                background-color: dodgerblue;
                padding: 10px;
                font-size: 30px;
                font-family: forte;
                color: white;
                text-shadow: 3px 4px 5px black,-3px -4px 5px black;
                border-radius: 30px;
                box-shadow: 4px 5px 6px navy,-4px -5px 6px red;
            }
            input[type=submit]:hover{
                background-color: navy;
                color: white;
                font-family: cooper;
                padding: 10px;
                box-shadow: 4px 5px 6px orange,-4px -5px 6px yellow;
            }
            .Container{
                margin: 250px;
                background-color: aquamarine;
                border: 1px solid black;
                padding: 40px;
                width: 50pc;
                text-align: center;
                box-shadow: 4px 5px 6px blue,-4px -5px 6px red;
            }
        </style>
    </head>
    <body>
        <div class="Login">
            <div class="Container">
                <h1>Admin Login</h1>
                <form action="AdminLogin" method="post">
                    <label for="adminId">Admin Id : -</label>
                    <input type="text" name="adminuser" size="60" placeholder="Username or E-mail"/><br/><br/>
                    <label for="pass">Password : -</label>
                    <input type="password" name="adminpass" size="60" placeholder="Password"/><br/><br/>
                    <input type="submit" value="Login">
                </form>
            </div>
        </div>
    </body>
</html>
