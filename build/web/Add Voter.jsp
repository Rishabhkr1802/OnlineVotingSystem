<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<sql:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/ovs" user="root" password="mysql" var="ds"/>
<sql:update dataSource="${ds}" var="rs">
    insert into Voter (firstname, lastname, fathername, dob, username, contactno, email, address, password) values ('${param.V_fname}', '${param.V_lname}', '${param.V_fathername}', '${param.V_dob}', '${param.V_username}', '${param.V_contact}', '${param.V_email}', '${param.V_add}', '${param.V_cpass}')
</sql:update> 
    
    
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Voter Successfully</title>
        <link rel="stylesheet" href="Stylesheet.css" type="text/css"/>
        <style>
            .Container{
                color: dodgerblue;
                font-size: 25px;
                font-family: forte;
                
            }
        </style>
    </head>
    <body>
        <%@include file="Font Size.jsp"%>
        <%@include file="Header.jsp" %>
        <div class="Container">
            <h1 aligh="center" style="color: salmon; font-family: times new roman;">${param.V_fname} ${param.V_lname} add successfully as a Voter.</h1>
            <h1>Now ${param.V_fname} can eligible to get their vote.</h1>
        </div>
        <%@include file="Footer.jsp"%>
    </body>
</html>
