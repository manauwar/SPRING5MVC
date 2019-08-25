<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Registration Confirmation Page</title>
</head>
<body>


The student is confirmed : ${student.firstName} ${student.lastName}

<br><br>
Country                  : ${student.country}

<br><br>

Favourite Language : ${student.favouriteLanguage}

<br><br>

Operating System : ${student.operatingSystems}

</body>
</html>