<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
    <title>Student Registration Page</title>
</head>
<body>
    <h1>Student Registration Page</h1>
    <font color="green">${sms}</font>
    
    <form:form modelAttribute="student" action="${pageContext.request.contextPath}/submitForm" method="post">
        <table>		
            <tr> 
                <td><form:label path="name">Name:</form:label></td>
                <td><form:input path="name" id="name" /></td>
            </tr>
		
            <tr> 
                <td><form:label path="email">Email:</form:label></td>
                <td><form:input path="email" id="email" /></td>	    
            </tr>	
		
            <tr> 
                <td><form:label path="gender">Gender:</form:label></td>		
                <td>
                    <form:radiobutton path="gender" id="genderMale" value="male" />Male
                    <form:radiobutton path="gender" id="genderFemale" value="female" />Female
                </td>				    
            </tr>
		
            <tr> 
                <td><form:label path="course">Courses:</form:label></td>		
                <td>
                    <form:select path="course" id="course">
                        <form:option value="">--select--</form:option>
                        <form:options items="${course}" />
                    </form:select>
                </td>				    
            </tr>
		
            <tr>
                <td><form:label path="timings">Timing:</form:label></td>
                <td><form:checkboxes items="${timing}" path="timings" id="timings" /></td>
            </tr>	
			
            <tr>	
                <td></td>
                <td><button type="submit">Submit</button></td>
            </tr>
        </table>
    </form:form>
    
    <a href="deta">Show Details</a>
</body>
</html>
