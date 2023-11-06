<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create a new Party</title>
    </head>
    <body>
        <%@include file= "Header.jsp"%>
        <div class="Heading">
            <h1>Add a New Party</h1>
            <h2>Fill the all required field</h2>
        </div>
        <div class="">
            <form action="RegisterParty" method="post">
            <label for="text">Enter a Party Name:-</label><input type="text" name="P_name" size="60" required/><br/><br/>
            <label for="text">Objective of the Party:-</label><input type="text" name="P_obj" size="60" required/><br/><br/>
            <label for="text">Membership of the Party:-</label><input type="text" name="P_member" size="60" required/><br/><br/>
            <label for="text">Upload a symbol:-</label><input type="file" name="P_symbol" size="50" required/><br/><br/>
            <input type="submit" value="Register"/>
            </form>
        </div>
        <%@include file="Footer.jsp"%>
    </body>
</html>
