<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Arabic</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://code.jquery.com/jquery-3.6.3.min.js"
            integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
    <link href="index.css" rel="stylesheet"/>
</head>
<body>

<div class="relative flex min-h-screen flex-col justify-center overflow-hidden bg-gray-50 py-6 sm:py-12">
    <div class="relative mx-auto w-fit bg-white px-6 pt-10 pb-8 shadow-xl ring-1 ring-gray-900/5 sm:rounded-lg sm:px-10">
        <div class="mx-auto">
            <div CLASS="flex gap-4">
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

                <div class="grid grid-cols-1 gap-4 text-lg font-medium text-white">
                    <div class="relative rounded-md bg-gray-700 py-4 px-4 w-[40rem] h-min shadow-lg">
                        <div class="m-4 flex justify-between">
                            <h4 class="self-center text-2xl capitalize">${alphabet.name()}</h4>
                            <button class="bg-teal-500 px-8 py-1 rounded-md text-lg shadow-sm transition hover:scale-90 hover:opacity-75">
                                Start
                            </button>
                        </div>
                        <div class="flex gap-[1px] overflow-x-auto overflow-y-visible m-2 pt-4">
                            <c:forEach items="${alphabet.chapters()}" var="chapter">
                                <button type="button"
                                        class="${chapter.progress() == 100 ? 'bg-gray-500': 'bg-teal-400 grow'} bubble group flex justify-center rounded-full py-3 px-3 transition-opacity hover:bg-opacity-80">
                                <span class="arrow-bottom hidden max-w-xs w-max absolute bottom-[45%] z-20 text-ellipsis rounded-lg bg-gray-600 p-4 font-normal text-base group-hover:[&:not(:hover)]:block">
                                    ${chapter.desc()}<br/>
                                        <span class="font-bold text-lg">${chapter.name()}</span>
                                    <span class="chapter-progress text-sm"><br/>Section Progress: ${chapter.progress()}%</span>
                                </span>
                                </button>
                            </c:forEach>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>

<script src="index.js"></script>
</body>

</html>