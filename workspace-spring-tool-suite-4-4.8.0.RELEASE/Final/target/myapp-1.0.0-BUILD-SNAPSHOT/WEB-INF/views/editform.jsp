<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.myfinal.finalapp.board.BoardDAO,com.myfinal.finalapp.board.BoardVO"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
</head>
<body>

<h1>Edit Form</h1>
<form:form commandName="vo" method="POST" action="../editok">
	<form:hidden path="seq"/>
	<table id="edit">
	<tr><td>Title:</td><td><form:input path="title"/></td></tr>
	<tr><td>Writer:</td><td><form:input path="writer"/></td></tr>
	<tr><td>Content:</td><td><form:textarea cols="50" rows="5" path="content" /></td></tr>
	<tr><td>Category:</td><td><form:input path="category" /></td></tr>
	</table>
	<button type="submit">수정하기</button>
	<button type="button"  onclick="history.back()">취소하기</button>
	
</form:form>

</body>
</html>