<%--
  Created by IntelliJ IDEA.
  User: s201848020
  Date: 2/27/2023
  Time: 3:15 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <script src="https://cdn.tailwindcss.com?plugins=line-clamp"></script>
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,600,0,0"/>
    <script src="https://code.jquery.com/jquery-3.6.3.min.js"
            integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
    <title>Document</title>
</head>
<body>

<div class="flex min-h-screen flex-col justify-center bg-gray-100">
    <jsp:include page="/header/header.jsp"/>
    <div class="mx-auto relative w-fit bg-white my-6 max-w-4xl rounded-2xl py-10 pl-12 shadow-xl ring-1 ring-gray-900/5">
        <div class="flex flex-row gap-2">
            <div class="max-w-lg text-justify">
                <h3 class="pb-4 text-3xl font-bold capitalize text-gray-800">Title de Title!</h3>
                <p class="text-lg font-medium text-gray-500">Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                    Sed nisi ex, ultrices ullamcorper diam non, semper eleifend quam. Proin scelerisque vitae erat eu
                    interdum. Ut eros erat, auctor non mi vel, condimentum venenatis urna. Nulla nec dolor rutrum,
                    rhoncus orci at, efficitur velit. Duis lectus felis, fermentum quis vehicula, efficitur in diam.</p>
                <jsp:include page="/common/info.jsp">
                    <jsp:param name="type" value="do"/>
                    <jsp:param name="title" value="titlessss"/>
                    <jsp:param name="content" value="Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                    Sed nisi ex, ultrices ullamcorper diam non, semper eleifend quam. Proin scelerisque vitae erat eu
                    interdum. Ut eros erat, auctor non mi vel, condimentum venenatis urna. Nulla nec dolor rutrum,
                    rhoncus orci at, efficitur velit. Duis lectus felis, fermentum quis vehicula, efficitur in diam."/>
                </jsp:include>
                <jsp:include page="/common/alert.jsp">
                    <jsp:param name="type" value="recommended"/>
                    <jsp:param name="title" value="titlessss"/>
                    <jsp:param name="content" value="thingsss"/>
                </jsp:include>
            </div>

            <div class="sticky top-10 mx-6 flex h-fit w-fit select-none flex-col items-center justify-center rounded-lg border-y-8 border-double bg-teal-600 text-center text-white shadow-lg ring-1 ring-gray-900/5">
                <h1 class="px-10 font-serif text-[14rem] font-semibold">غ</h1>
                <div class="flex min-w-full items-center justify-center shadow-sm">
                    <span title="listen"
                          class="material-symbols-outlined sound-button relative cursor-pointer py-3 !text-3xl w-full transition-colors hover:bg-teal-700">volume_up</span>
                </div>
            </div>

        </div>

        <div class="mx-auto flex justify-center pt-10 pb-4">
            <button class="rounded-md bg-teal-600 px-8 py-2 text-lg font-medium text-white shadow transition hover:scale-90 hover:opacity-80">
                Continue
            </button>
        </div>
    </div>
</div>
<script src="${pageContext.request.contextPath}/chapter/letter.js"></script>
</body>
</html>
