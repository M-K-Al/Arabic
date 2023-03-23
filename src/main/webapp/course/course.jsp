<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Arabic</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://code.jquery.com/jquery-3.6.3.min.js"
            integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
    <link href="${pageContext.request.contextPath}/course/course.css" rel="stylesheet"/>
</head>
<body>
<div class="relative flex min-h-screen flex-col overflow-hidden bg-gray-50">
    <jsp:include page="/header/header.jsp"/>
    <div class="relative mx-auto w-full max-w-4xl">
        <div class="min-w-fit m-6 bg-teal-600 shadow-lg rounded-3xl flex items-center px-6 py-14">
            <h3 class="text-3xl text-white font-medium">Welcome Back</h3>
        </div>
        <div CLASS="flex gap-4 mx-6">
            <div class="basis-1/5">
                <div class="grid grid-cols-1 w-max text-lg font-medium text-white">
                    <c:forEach items="${courses}" var="course">
                        <h6 class="text-gray-700 mb-3 mt-6">${course.name()}</h6>
                        <c:forEach items="${course.modules()}" var="module">
                            <a href="#"
                               class="rounded-md shadow-lg m-1 bg-gray-700 p-6 hover:opacity-80 hover:scale-95 transition">
                                <h4 class="self-center text-2xl capitalize">${module.name()}</h4>
                            </a>
                        </c:forEach>
                    </c:forEach>
                </div>
            </div>

            <div class="grid grid-cols-1 w-full gap-4 text-lg font-medium text-white">
                <c:forEach items="${courses[currentCourse].modules()[currentModule].chapters()}" var="chapter"
                           varStatus="chapterStatus">
                    <div class="relative rounded-md bg-gray-700 py-4 px-4 flex flex-col w-full h-min shadow-lg">
                        <div class="m-4 flex justify-between">
                            <h4 class="self-center text-2xl capitalize overflow-hidden truncate">${chapter.name()}</h4>
                            <a href=""
                               class="bg-teal-500 cursor-pointer px-8 py-1 rounded-md text-lg shadow-sm transition hover:scale-90 hover:opacity-80">
                                Start
                            </a>
                        </div>
                        <div class="flex gap-[1px] overflow-x-auto overflow-y-visible m-2 pt-4">
                            <c:forEach items="${chapter.sections()}" var="section" varStatus="sectionStatus">
                                <a href="${pageContext.request.contextPath}${section.getURL(currentCourse, currentModule, chapterStatus.getIndex(), sectionStatus.getIndex())}"
                                   class="${section.progress() == 100 ? 'bg-gray-400': 'bg-teal-400 grow'} bubble group flex items-center text-center justify-center rounded-full py-3 px-3 transition-opacity hover:bg-opacity-80">
                                <span class="arrow-bottom absolute bottom-[45%] isolate z-20 hidden w-max max-w-xs text-ellipsis rounded-lg bg-gray-600 p-4 text-base font-normal shadow-lg shadow-gray-900 group-hover:[&:not(:hover)]:block">
                                    ${section.desc()}<br/>
                                        <span class="font-bold text-lg">${section.name()}</span>
                                    <span class="chapter-progress text-sm"><br/>Section Progress: ${section.progress()}%</span>
                                </span>
                                </a>
                            </c:forEach>
                        </div>
                    </div>
                </c:forEach>
            </div>

        </div>
    </div>
</div>

<script src="${pageContext.request.contextPath}/course/course.js"></script>
</body>

</html>