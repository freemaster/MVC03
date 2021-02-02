<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="su" value="7" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 연습 02</title>
</head>
<body>
${su}<br>
<c:choose>
    <c:when test="${su%2==0}">짝수입니다.</c:when>
    <c:when test="${su%2!=0}">홀수입니다.</c:when>
    <c:otherwise>일치하는 when이 없을 때 실행되는 부분</c:otherwise>
</c:choose>
</body>
</html>