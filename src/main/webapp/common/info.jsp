<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<body>
<jsp:useBean id="color" class="java.lang.String"/>
<jsp:useBean id="icon" class="java.lang.String"/>
<c:choose>
    <c:when test="${param.type=='abstain'}">
        <c:set var="color" value="#1d77d1"/>
        <c:set var="icon" value="info"/>
    </c:when>
    <c:when test="${param.type=='avoid'}">
        <c:set var="color" value="#32a852"/>
        <c:set var="icon" value="info"/>
    </c:when>
    <c:when test="${param.type=='do'}">
        <c:set var="color" value="#e07736"/>
        <c:set var="icon" value="info"/>
    </c:when>
    <c:otherwise>
        <c:set var="color" value="#b32b7e"/>
        <c:set var="icon" value="info"/>
    </c:otherwise>
</c:choose>
<div class="my-4">
    <div class="relative flex flex-col">
        <div class="info-box-container h-fit overflow-hidden rounded-md shadow-md">
            <label class="peer block cursor-pointer bg-[${color}] p-4 text-xl [&:has(input:checked)]:bg-opacity-90">
                <input class="info-box-state peer hidden" type="checkbox" checked/>
                <div class="m-2 flex flex-row gap-2 peer-checked:[&>h5]:line-clamp-1">
                    <span class="material-symbols-outlined !text-3xl text-white"> ${icon} </span>
                    <h5 class="break-all text-ellipsis text-xl font-semibold capitalize text-white">${param.title}</h5>
                </div>
                <div class="h-full max-h-96 overflow-hidden duration-500 peer-checked:max-h-0 peer-checked:translate-y-8">
                    <p class="flex p-2 text-justify text-lg text-gray-50">${param.content}</p>
                </div>
            </label>
            <div class="absolute flex w-full top-0 -translate-y-4">
                <c:if test="${param.hints}">
                    <jsp:include page="/common/hint.jsp">
                        <jsp:param name="dir" value="right"/>
                        <jsp:param name="title" value="Click here to expand the info box"/>
                    </jsp:include>
                </c:if>
            </div>
        </div>
    </div>
</div>
<script>
    $(".info-box-state").change(function () {
        if (!this.checked) {
            $(this).off("change").parents(".info-box-container").find(".floating-hint-state").click();
        }
    });
</script>
</body>
</html>