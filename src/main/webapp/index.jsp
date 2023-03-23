<%--
  Created by IntelliJ IDEA.
  User: mutae
  Date: 3/8/2023
  Time: 11:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Arabic</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://code.jquery.com/jquery-3.6.3.min.js"
            integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Amiri+Quran&display=swap" rel="stylesheet"/>
    <link rel="stylesheet" href="index.css">
</head>
<body>
<div class="w-full">
    <div class="flex h-[100vh] w-full flex-col">
        <nav class="py-5 text-lg">
            <div class="mx-auto max-w-4xl select-text px-8">
                <div class="relative flex items-center justify-between">
                    <div class="flex flex-1 items-center justify-center sm:items-stretch sm:justify-start">
                        <a href="${pageContext.request.contextPath}/"
                           class="flex flex-shrink-0 select-none items-center text-4xl font-medium">Arabic</a>
                    </div>
                    <div class="absolute inset-y-0 right-0 flex items-center transition-all duration-700">
                        <div class="hidden sm:ml-6 sm:block">
                            <div class="flex space-x-4">
                                <div class="relative flex text-left font-medium text-gray-600 [&>span]:cursor-pointer [&>span]:border-b-4 [&>span]:border-transparent [&>span]:p-2 [&>span]:transition-all hover:[&>span]:border-gray-600 hover:[&>span]:text-black">
                                    <span tabindex="0" class="">Log In</span>
                                    <span tabindex="-1"
                                          class="mx-2 rounded-md bg-gray-800 px-2 text-gray-100 hover:!border-teal-400 hover:!text-white">Sign Up</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </nav>
        <div id="floating-text-container"
             class="relative flex basis-full items-center justify-center overflow-hidden truncate text-6xl font-medium text-gray-500 [&>span]:transition-all [&>span]:duration-[10s]">
            <div class="bg-layer z-10 flex flex-col items-center justify-center gap-8 rounded-full px-32 py-20 -translate-x-60">
                <h2 class="text-4xl font-bold leading-relaxed text-gray-800">
                    Free, Engaging, and Simple <br/>
                    Way to Learn <span class="underline">Arabic</span> Online
                </h2>
                <a href="${pageContext.request.contextPath}/course"
                   class="w-fit rounded-md bg-gray-800 px-24 py-4 text-xl text-white shadow-sm transition hover:scale-90 hover:opacity-80">
                    Head to Course
                </a>
            </div>
            <div class="absolute flex pointer-events-none -right-10 select-none">
                <img src="${pageContext.request.contextPath}/img/img.png" alt=""
                     class="w-[42rem] isolate z-[1] animate-[spin_260s_linear_infinite] opacity-50">
            </div>
        </div>
    </div>
</div>
<script src="index.js"></script>
</body>

</html>
