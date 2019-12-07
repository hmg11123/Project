<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
  
<c:forEach items="${pizzaList }" var="pizza">

	<a href ="${pageContext.request.contextPath }/pizza/pizzaPage"><img src="data:image/png;base64,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"/> </a>
	
	
</c:forEach>

<br  />

<form action = "/pizza/pizzaSubmit">
 <button type = "submit" value = "피자 등록" class = "btn btn-primary"> 피자등록 </button>
</form>
    