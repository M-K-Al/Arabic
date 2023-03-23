<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: mutae
  Date: 3/17/2023
  Time: 12:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<body>
<link rel="stylesheet" href="${pageContext.request.contextPath}/common/hint.css">
<div class="floating-hint max-w-[11rem] [&:has(input:checked)]:opacity-0 [&:has(input:checked)]:pointer-events-none duration-200 absolute isolate z-30 flex w-full flex-col items-center gap-3 rounded-lg bg-gray-900 p-4 text-center text-sm shadow-xl drop-shadow-lg transition ${param.dir=='left' ? 'arrow-left right-0 translate-x-[calc(100%+16px)]' : 'arrow-right left-0 -translate-x-[calc(100%+16px)]'}">
    <span class="font-medium text-gray-100">${param.title}</span>
    <label class="text-md w-fit cursor-pointer rounded-md bg-teal-600 py-1 px-4 font-medium text-white shadow transition hover:scale-90 hover:opacity-80">
        <input class="floating-hint-state hidden" type="checkbox"/>
        Dismiss
    </label>
</div>
<script>
    $(".floating-hint-state").change(function () {
        if (this.checked) {
            setInterval(() => {
                $(this).parents(".floating-hint").remove();
            }, 200);
        }
    });
</script>
</body>
</html>
