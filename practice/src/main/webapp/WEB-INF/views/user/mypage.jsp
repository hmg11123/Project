<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
	<h1>���̵� : ${login_id }</h1><br><br>
	
	�̸� : ${login_name}<br><br>
	
	��й�ȣ : ${login_password }<br><br>

	�̸��� : ${login_email}<br><br>
	
	����ȣ : ${login_zip_code}<br><br>
	
	�ּ� : ${login_add}<br><br>
	
	�� �ּ� : ${login_detail_add}<br><br>
	<a class="navbar-brand" href="${pageContext.request.contextPath }/update/updatePage">
	<button type="button" class="btn btn-warning" id="revise">����</button>
	</a>
	