<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 종합 예제</title>
</head>
<body>
    <h2>
        1. JSP 주석
        <!-- HTML 주석: 화면에 안 보이고 브라우져 소스 보기에는 보임, VSCode에서 shift+?로 일괄 주석 가능-->
        <%-- JSP 주석: 화면에 안 보이고 브라우져 소스에서도 안 보임--%>
    </h2>
    <hr>

    <%!
        String[] members = {"김길동", "홍길동", "김사랑", "박사랑"};
        int num1 = 10;

        int calc(int num2) {
            return num1 + num2;
        }
    %>
    <h2>
        2. java 스크립트에서 calc(10) 메서드 실행 결과 : <%= calc(10) %>
    </h2>
    <hr>
    *참고 / &#61 root ./ &#61 현재폴더위치 ../ &#61 상위경로
    <h2>3. include: "../hello.jsp"</h2>
    <%@ include file="../hello.jsp"%>

    <hr>
    <h2>4. 스크립트(배열 데이터 출력)</h2>
    <ul style="list-style: decimal">
        <%
        for (String name : members) {
        %>
            <li><%=name%></li>
        <%
        }
        %>
    </ul>
</body>
</html>