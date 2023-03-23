<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<body>
<jsp:useBean id="color" class="java.lang.String"/>
<c:choose>
    <c:when test="${param.type=='abstain'}"> <c:set var="color" value="#d42275"/></c:when>
    <c:when test="${param.type=='avoid'}"> <c:set var="color" value="#f37f3c"/></c:when>
    <c:when test="${param.type=='do'}"> <c:set var="color" value="#40ec8d"/></c:when>
    <c:otherwise><c:set var="color" value="#0dcaf0"/></c:otherwise>
</c:choose>
<div class="my-4 rounded-lg border-l-4 border-[${color}] bg-[${color}]/20 p-4 text-black shadow-md" role="alert">
    <h6 class="text-lg font-bold">${param.title}</h6>
    <p>${param.content}</p>
</div>
</body>
</html>
