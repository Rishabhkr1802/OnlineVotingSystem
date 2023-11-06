<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
        <link rel="stylesheet" href="Stylesheet.css" type="text/css"/>
        <style>
            .Heading{
                background-color: chocolate;
                text-align: center;
                font-size: 20px;
                color: #fff123;
                font-family: forte;
                text-shadow: 3px 4px 5px black,-3px -4px 5px black;
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
            }
            input[type=submit]:hover{
                background-color: navy;
                color: white;
                font-family: cooper;
                padding: 10px;
                box-shadow: 4px 5px 6px orange,-4px -5px 6px yellow;
            }
            .Container{
                background-color: #fff123;
                border: 1px solid black;
                padding: 20px;
                color: red;
                font-size: 30px;
                font-family: cooper;
                text-shadow: 3px 2px 5px black;
                width: 50pc;
                text-align: center;
                margin-left: 15pc;
                box-shadow: 5px 8px 5px black,-5px -8px 5px red;
            }
        </style>
    </head>
    <body>
        <%@include file="Font Size.jsp"%>
        <%@include file="Header.jsp"%>
        <div class="Heading">
            <h1>Voter Registration Form</h1>
        </div>
        <div class="Container">
            <form action="RegisterVoter" method="post">
            <label for="fname">First Name :-</label><input type="text" name="V_fname" size="60" placeholder="Enter First Name..." /><br/><br/>
            <label for="lname">Last Name :-</label><input type="text" name="V_lname" size="60" placeholder="Enter Last Name..." /><br/><br/>
            <label for="gname">Father's Name :-</label><input type="text" name="V_fathername" size="60" placeholder="Enter Father Name..." /><br/><br/>
            <label>Age</label>
            <select  name="age">
                <option value=" ">***Select***</option>
                <option value="18">18</option>
                <option value="19">19</option>
                <option value="20">20</option>
                <option value="21">21</option>
                <option value="22">22</option>
                <option value="23">23</option>
                <option value="24">24</option>
                <option value="25">25</option>
                <option value="26">26</option>
                <option value="27">27</option>
                <option value="28">28</option>
                <option value="29">29</option>
                <option value="30">30</option>
                <option value="31">31</option>
                <option value="32">32</option>
                <option value="33">33</option>
                <option value="34">34</option>
                <option value="35">35</option>
                <option value="36">36</option>
                <option value="37">37</option>
                <option value="38">38</option>
                <option value="39">39</option>
                <option value="40">40</option>
                <option value="41">41</option>
                <option value="42">42</option>
                <option value="43">43</option>
                <option value="44">44</option>
                <option value="45">45</option>
                <option value="46">46</option>
                <option value="47">47</option>
                <option value="48">48</option>
                <option value="49">49</option>
                <option value="50">50</option>
                <option value="51">51</option>
                <option value="52">52</option>
                <option value="53">53</option>
                <option value="54">54</option>
            </select><br/><br/>
            <label for="gender">Gender :-</label><br/><br/><input type="radio" name="V_gender"/> Male <input type="radio" name="gender" /> Female<br/><br/>
            <label for="dob">Date Of Birth :-</label><input type="date" name="V_dob" /><br/><br/>
            <label for="uname">Pan Card Number :-</label><input type="text" name="V_panno" size="60" placeholder="Enter Pan Number..." maxlength="8" required/><br/><br/>
            <label for="contact">Contact No. :-</label><input type="text" name="V_contact" size="60" placeholder="Enter Contact No..." maxlength="10" required/><br/><br/>
            <label for="email">E-mail :-</label><input type="email" name="V_email" size="60" placeholder="Enter E-mail..." required/><br/><br/>
            <label for="add">Address :-</label><input type="text" name="V_add" size="60" placeholder="Enter Address..." required/><br/><br/>
            <label for="pass">Password :-</label><input type="password" name="V_pass" size="60" placeholder="Enter Password..." required/><br/><br/>
            <label for="pass">Confirm Password :-</label><input type="password" name="V_cpass" size="60" placeholder="Confirm Password..." required/><br/><br/><br/>
            <input type="submit" value="Submit" />
            </form>
        </div> 
        <%@include file="Footer.jsp"%>
    </body>
</html>
