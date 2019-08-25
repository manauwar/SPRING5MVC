<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Registration page</title>
</head>
<body>

	<form:form action="processForm" modelAttribute="student">

First Name : <form:input path="firstName" />

		<br>
		<br>

Last Name  : <form:input path="lastName" />

		<br>
		<br>
		
		<form:select path="country">
		
		
	<%-- 	<form:option value="Brazil" label="Brazil"/>
		<form:option value="France" label="France"/>
		<form:option value="Germany" label="Germany"/>
		<form:option value="India" label="India"/> --%>
		
		<form:options items="${student.countryOptions}"/>
		
		</form:select>
		
<br>
		<br>
		
		Favourite Language : 
		
		Java : <form:radiobutton path="favouriteLanguage" value="Java"/>
		C# : <form:radiobutton path="favouriteLanguage" value="C#"/>
		Ruby : <form:radiobutton path="favouriteLanguage" value="Ruby"/>
		Python : <form:radiobutton path="favouriteLanguage" value="Python"/>
		
		<br>
		<br>
		Operating Systems : 
		Linux <form:checkbox path="operatingSystems" value="Linux"/>
		Macintosh <form:checkbox path="operatingSystems" value="Macintosh"/>
		Windows <form:checkbox path="operatingSystems" value="Windows"/>
		Solaris <form:checkbox path="operatingSystems" value="Solaris"/>
		
		<br>
		<br>
		<input type="submit" value="Submit">

	</form:form>


</body>
</html>