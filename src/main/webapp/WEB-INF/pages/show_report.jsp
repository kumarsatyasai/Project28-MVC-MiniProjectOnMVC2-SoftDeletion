
<%@page isELIgnored="false" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<body bgcolor="#CDBCA8">
<br/><br/><br/><br/><br/><br/>
<h1 style="color:#201E1F;text-align: center">Report Of Students In Java</h1>
<c:choose>
	<c:when test="${!empty studentsList}">
		<table border="0"   align="center">
			<tr style="color:#CDBCA8;background-color: #675C5A;text-align: center">
				<th>SNUMBER</th><th>SNAME</th><th>SAGE</th><th>SGENDER</th><th>Operations</th>
			</tr>
			<c:forEach var="stud" items="${studentsList}" >
				<tr style="color:#CDBCA8;background-color: #675C5A;text-align: center">
					<td>${stud.sno}</td>
					<td>${stud.sname}</td>
					<td>${stud.sage}</td>
					<td>${stud.sgender}</td>
					<td>&nbsp;<a href="editform?sno=${stud.sno}" style="color:white">Edit</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="delete?sno=${stud.sno}" style="color:white">Delete</a>&nbsp;</td>
				</tr>
			</c:forEach>
		</table>
	</c:when>
	<c:otherwise><h1 style="color:red;text-align:center">No Student Data Found</h1></c:otherwise>
</c:choose>
<br/><br/><br/>

<h1 style="color:#675C5A;text-align:center">${resultMsg}</h1>
<h1 style="color:#675C5A;text-align:center">${editResult}</h1>
<h1 style="color:#675C5A;text-align:center">${deleteResult}</h1>
<br/>
<center><button style=" background-color:#675C5A;color:cyan ;border:none;width:120px;height:40px"><a href="launchregisterform" style="text-decoration:none;color:white">Register</a></button></center>
</body>
