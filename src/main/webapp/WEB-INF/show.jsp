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
		<h1>Here's your Omikuji!</h1>
		<div class="message">
				<p>In <c:out value="${selectNum}"/> years, you will live in <c:out value="${city}"/> with <c:out value="${person}"/> as your room-mate, <c:out value="${hobby}"/> for a living</p>
			<p>The next time you see a <c:out value="${thing}"/>, you will have good luck.</p>
			<p>Also, <c:out value="${say}"/></p>
		</div>
		<a href="/omikuji">Go back</a>
	</div>
</body>
</html>