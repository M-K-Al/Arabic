<%--
  Created by IntelliJ IDEA.
  User: mutae
  Date: 3/11/2023
  Time: 2:01 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Preparation</title>
    <script src="https://cdn.tailwindcss.com?plugins=line-clamp"></script>
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,600,0,0"/>
</head>
<body>
<div class="relative flex min-h-screen overflow-hidden bg-gray-100/20">
    <img src="${pageContext.request.contextPath}/img/img_1.png" alt=""
         class="h-[150vh] static -z-20 absolute -top-1/4 right-1/2 select-none opacity-50"/>
    <div class="absolute select-none inset-0 bg-white -z-10 [mask-image:linear-gradient(180deg,white,rgba(255,255,255,0))]"></div>
    <div class="relative mx-auto w-full flex items-center justify-center text-center max-w-4xl">
        <div class="absolute top-0 mt-5 w-full">
            <div class="relative mx-8 flex w-full min-w-[36rem] flex-row justify-center gap-4 rounded-lg">
                <a href="${pageContext.request.contextPath}/"
                   class="absolute left-0 flex select-none text-4xl font-medium">Arabic</a>
                <div class="cursor-pointer rounded-full bg-teal-500 px-6 py-2 text-lg font-medium text-white shadow-md hover:opacity-80">
                    Title de Title
                </div>
            </div>
        </div>
        <div class="absolut flex mr-14 my-24 w-fit items-center translate-x-[20%] z-10">
            <div class="flex h-fit flex-col items-center justify-center gap-4 rounded-xl border-gray-100 border bg-white p-8 text-center drop-shadow-2xl text-justify">
                ${prechapter.content()}
                <a href="${pageContext.request.contextPath}${prechapter.followup().getURL(course, module, chapter, section, true)}"
                   class="w-fit cursor-pointer rounded-md bg-teal-500 px-8 py-1 text-lg font-medium text-white shadow-lg transition hover:scale-90 hover:opacity-80">Continue</a>
                <div class="absolute right-0 translate-x-10 border-[2.5rem] border-r-0 border-white border-t-transparent border-b-transparent"></div>
            </div>
            <div class="min-w-fit self-center select-none pointer-events-none">
                <img src="${pageContext.request.contextPath}/img/arabian_man_1.png" alt=""
                     class="w-72 z-10 mr-10">
            </div>
        </div>
        <a href="${pageContext.request.contextPath}/course" tabindex="0"
           class="absolute bottom-0 left-0 m-2 rounded-r-full rounded-tl-full bg-teal-600/90 p-8 text-xl font-medium text-white transition hover:scale-90 hover:opacity-85">
            Return
        </a>
    </div>
</div>
</body>
</html>
