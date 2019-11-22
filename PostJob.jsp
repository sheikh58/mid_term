<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Post_JOb</title>
</head>
<body>
<div id="container">
<form action = "process_2.jsp" method="post">
    <lable>JOb_title</lable>
    <input type="text" name="title" required>
    </br>
    <lable>Description</lable>
    <input type="text" name="description" required>
    </br>
    <lable>Type of Job</lable>
    <input type="radio" name="get_type" value="Full_Time" required>
    <input type="radio" name="get_type" value="Part_Time" required>
    </br>
    <lable>Select City</lable>
    <select id = "myList" required>
        <option value = "Islambad" name="get_location">Islamabad</option>
        <option value = "Karachi" name="get_location">Karachi</option>
        <option value = "Rawalpindi" name="get_location">Rawalpindi</option>
    </select>
    </br>
    <input type="submit" value="submit"> <input type="reset" value="reset">
</form>
</div>
</body>
</html>
