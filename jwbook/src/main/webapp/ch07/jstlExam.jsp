<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 종합 예제</title>
</head>
<body>
	<h2>JSTL 종합 예제</h2>
	<hr>
	
	<!-- set, out -->
	<h3>set, out</h3>
	<c:set var="product1" value="<b>애플 아이폰</b>" />
	<c:set var="product2" value="삼성 갤럭시 노트" />
	<c:set var="intArray" value="${[1,2,3,4,5]}" /> <!-- 에러 표시 무시 -->
	
	<p>
		product1(jstl):
		<c:out value="${product1}" default="Not registered" escapeXml="true" />
	</p>
	
	<p>product1(e1) : ${product1 }</p>
	<p>intArray[2] : ${intArray[2]}</p>
	
	<h3>배열 출력</h3>
	<ul style="list-style: none">
		<c:forEach var="num" varStatus="i" items="${intArray }">
			<li>${i.index }번 인덱스 : ${num } (값)</li> <!-- 에러 표시 무시 -->
		</c:forEach>
	</ul>
</body>
</html>