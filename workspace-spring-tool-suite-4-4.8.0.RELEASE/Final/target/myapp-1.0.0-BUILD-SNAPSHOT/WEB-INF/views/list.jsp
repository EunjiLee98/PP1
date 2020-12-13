<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판</title>
</head>
<style>
#list {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
#list td, #list th {
  border: 1px solid #ddd;
  padding: 8px;
  text-align:center;
}
#list tr:nth-child(even){background-color: #f2f2f2;}
#list tr:hover {background-color: #ddd;}
#list th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #006bb3;
  color: white;
}
</style>
<body>
<h1>자유게시판</h1>
<p>좋은 하루 보내세요 ~ :)</p>
<table id="list">
<tr>
	<th>Id</th>
	<th>Category</th>
	<th>Title</th>
	<th>Writer</th>
	<th>Content</th>
	<th>Regdate</th>
	<th>Edit</th>
	<th>Delete</th>
</tr>

<c:forEach items ="${list}" var="u">
<tr>
	<td>${u.seq}</td>
	<td>${u.category}</td>
	<td>${u.title}</td>
	<td>${u.writer}</td>
	<td>${u.content}</td>
	<td>${u.regdate}</td>
	<td><a href="editform/${u.seq}">글 수정</a></td>
	<td><a href="deleteok/${u.seq}">글 삭제</a></td>
</tr>
</c:forEach>
</table>

<br/><button type="button" onclick="location.href='add'">새 글쓰기</button>
</body>
</html>