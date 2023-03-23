<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <%--    <link rel="stylesheet"--%>
    <%--          href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,600,0,0"/>--%>
</head>
<body>
<nav class="py-4 text-lg">
    <div class="mx-auto max-w-4xl select-text px-10">
        <div class="relative flex items-center justify-between">
            <div class="flex flex-1 items-center justify-center sm:items-stretch sm:justify-start">
                <a href="${pageContext.request.contextPath}/"
                   class="flex flex-shrink-0 select-none items-center text-4xl font-medium">Arabic</a>
            </div>
            <div class="absolute inset-y-0 right-0 flex items-center transition-all duration-700 sm:static sm:inset-auto sm:ml-6 sm:pr-0 ">
                <div class="hidden sm:ml-6 sm:block">
                    <div class="flex space-x-4">
                        <div class="relative flex text-left font-medium text-gray-500 [&>span]:transition-all [&>span]:p-2 [&>span]:cursor-pointer [&>span]:border-b-4 [&>span]:border-transparent hover:[&>span]:border-gray-500 hover:[&>span]:text-black hover:h-full">
                            <span tabindex="0" class="">Lessons</span>
                            <span tabindex="0" class="">Stories</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</nav>
</body>
</html>
