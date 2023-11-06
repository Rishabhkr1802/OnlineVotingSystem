<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Candidate</title>
    </head>
    <body>
        <%@include file="Font Size.jsp"%>
        <%@include file="Header.jsp" %>
        <div class="">
            <div class="">
                <form action="RegisterCandidate" method="post">
                    <label for="name">Candidate Name : <input type="text" name="C_name" placeholder="Enter Here" size="20" required/></label><br/><br/>
                    <label for="age">Candidate Age : </label>
                    <select  name="C_age">
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
                    <label for="gender">Gender :</label>
                    <select name="C_gender">
                        <option value=" ">***Select***</option>
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                    </select><br/><br/>
                    <label for="email">Candidate Email : <input type="email" name="C_email" placeholder="Enter Email..." size="20" required></label><br/><br/>
                    <label for="party">Party Name : <input type="text" name="C_party" placeholder="Enter Party Name..." size="20" required></label><br/><br/>
                    <label for="pass">Password : <input type="Password" name="C_pass" placeholder="Enter Password..." size="20" required ></label><br/><br/>
                    <input type="submit" value="Submit"/>                    
                </form>
            </div>
        </div>
        <%@include file="Footer.jsp" %>
    </body>
</html>
