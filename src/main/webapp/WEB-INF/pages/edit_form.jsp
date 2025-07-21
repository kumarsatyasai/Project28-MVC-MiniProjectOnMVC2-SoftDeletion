

<%@ page isELIgnored="false" %>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="frm" %>
<br/><br/><br/><br/>
<h1 style="color:#675C5A;text-align:center">Student Register Form</h1><br/><br/><br/>
<table align="center" bgcolor="#CDBCA8">
	<frm:form action="edit" method="post" modelAttribute="student">
	    <tr>
			<td>Student Number</td>
			<td><frm:input type="text" path="sno" readonly="true"/></td>
		</tr>
		<tr>
			<td>Student Name</td>
			<td><frm:input type="text" path="sname"/></td>
		</tr>
		<tr>
			<td>Student Age</td>
			<td><frm:input type="text" path="sage"/></td>
		</tr>
		<tr>
			<td>Student Gender</td>
			<td><frm:input type="text" path="sgender"/></td>
		</tr>
		<tr>
			<td><input type="submit" value="Edit Student"/></td>
		</tr>
		
	</frm:form>
</table>