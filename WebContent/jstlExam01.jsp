<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="sum" value="100" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <c:out value="${sum}" />
    <c:if test="${sum%2==0}">
짝수입니다.
</c:if>
    <c:if test="${sum%2!=0}">
홀수입니다.
</c:if>
    <br>
    <c:forEach var="i" begin="1" end="5" step="1">
        <span style="font-size:${i*10}px">야호~~~~~~JSP</span>
        <br>
    </c:forEach>
</body>
</html>