<%@page import="kr.iot.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
    //회원 정보 1개를 생성해보자.
    MemberVO vo = new MemberVO();
    vo.setId("admin");
    vo.setMname("관리자");
    vo.setMemail("ㅁ@ㅁ.com");
    vo.setMage(30);
    request.setAttribute("vo", vo);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>JSTL 03</title>
</head>
<body>
    <div class="container">
        <table class="table table-hover">
            <thead class="thead-dark">
                <tr>
                    <th scope="col">아이디</th>
                    <th scope="col">이름</th>
                    <th scope="col">이메일</th>
                    <th scope="col">나이</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><%=vo.getId()%></td>
                    <td><%=vo.getMname()%></td>
                    <td><%=vo.getMemail()%></td>
                    <td><%=vo.getMage()%></td>
                </tr>
                <tr>
                    <td>${vo.id}</td>
                    <td>${vo.mname}</td>
                    <td>${vo.memail}</td>
                    <td>${vo.mage}</td>
                </tr>
            </tbody>
        </table>
    </div>
</body>
</html>