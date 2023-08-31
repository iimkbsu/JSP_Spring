<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="UTF-8">
			<title>JSTL 종합 예제</title>
		</head>
		<style>
			form {
				text-align: center;
			}

			ul {
				list-style: none;
			}
		</style>

		<body>
			<form>
				<h2>JSTL 종합 예제</h2>
				<hr>

				<!-- set, out -->
				<h3>c:set var="" value="" </h3>
				<h3>c:out value="" default="" escapeXml="t/f"</h3>
				<c:set var="product1" value="<b>애플 아이폰</b>" />
				<c:set var="product2" value="삼성 갤럭시 노트" />
				<c:set var="intArray" value="${[1,2,3,4,5]}" /> <!-- 에러 표시 무시 -->

				<p>
					product1(jstl):
					<c:out value="${product1}" default="Not registered" escapeXml="true" />
				</p>

				<p>product1(e1) : ${product1}</p>
				<p>intArray[2] : ${intArray[2]}</p>

				<hr>
				<!-- forEach -->
				<h3>c:forEach var="" varStatus="" items="" 배열출력</h3>
				<ul>
					<c:forEach var="num" varStatus="i" items="${intArray }">
						<li>${i.index }번 인덱스 : ${num } (값)</li> <!-- 에러 표시 무시 -->
					</c:forEach>
				</ul>

				<hr>
				<!-- if -->
				<h3>c:if test=""</h3>
				
				<c:set var="checkout" value="true" /> 
				
				<c:if test="${checkout}">
					<p>주문제품 : ${product2}</p>
				</c:if>
				
				<c:if test="${!checkout}">
					<p>주문제품이 아닙니다.</p>
				</c:if>
				
				<c:if test="${!empty product2}">
					<p><b>${product2} 이미 추가됨</b></p>
				</c:if>
				
				<hr>
				
				<h3>c:choose, c:when test="", c:otherwise</h3>
				<p>if/ else if/ else/ switch와 같은 역할</p>
				
				<c:choose>
					<c:when test="${checkout}">
						<p>주문 제품: ${product2}</p>
					</c:when>
					<c:otherwise>
						<p>주문 제품이 아님!</p>
					</c:otherwise>
				</c:choose>
				
				<hr>
				
				<h3>c:forTokens var="" items=" | | " delims="|" varStatus=""</h3>
				
				<c:forTokens var="city" items="Seoul|Tokyo|New York|Toronto" delims="|" varStatus="i">
					<c:if test="${i.first}">도시목록: </c:if> 
						${city}
					<c:if test="${!i.last}">,</c:if>
				</c:forTokens>
			</form>
		</body>

		</html>