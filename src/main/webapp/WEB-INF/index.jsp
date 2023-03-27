<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Omikuji</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="/css/style.css">
</head>
<body>
	<div class="mainContainer">
		<h1>Send an Omikuji!</h1>
		<div class="mainFunction">
			<form action="/omikuji/store" method="POST">
				<label for="selectNum">Pick any number from 5 to 25</label><br>
				<select name="selectNum">
					<c:forEach var="i" begin = "5" end = "25">
						<option value="${i}"><c:out value="${i}"/></option>
					</c:forEach>
				</select><br>
				<label for="city">Enter the name of any city.</label><br>
				<input type="text" name="city"><br>
				<label for="person">Enter the name of any real person.</label><br>
				<input type="text" name="person"><br>
				<label for="hobby">Enter professional endeavor or hobby.</label><br>
				<input type="text" name="hobby"><br>
				<label for="thing">Enter any type of living thing.</label><br>
				<input type="text" name="thing"><br>
				<label for="say">Say something nice to someone.</label><br>
				<textarea name="say" cols="30" rows="10"></textarea><br>
				<label for="send">Send and show a friend</label><br>
				<input type="submit" value="send" class="submit">
			</form>
		</div>
	</div>
</body>
</html>