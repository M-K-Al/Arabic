<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: s201848020
  Date: 2/28/2023
  Time: 7:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Title</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://code.jquery.com/jquery-3.6.3.min.js"
            integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,600,0,0"/>
    <script src="https://code.highcharts.com/highcharts.js"></script>
    <%--suppress JSUnresolvedFunction --%>
    <script>
        const exercises = Object.entries(${letterExercises});
    </script>
</head>
<body class="">
<div class="absolute left-0 top-[10%] rounded-lg right-0 mx-auto flex max-h-[75%] h-full w-full max-w-4xl flex-row overflow-hidden text-center">
    <div class="flex basis-3/5 flex-col rounded-md">
        <div class="basis-2/5">
            <div class="flex h-full flex-col items-center justify-evenly">
                <h4 class="text-ellipsis break-all text-2xl font-medium">Lorem ipsum dolor sit amet:</h4>
                <button class="flex items-center rounded-md bg-teal-600 py-4 pr-6 text-lg font-medium text-white shadow transition hover:scale-90 hover:opacity-80">
                    <span class="material-symbols-outlined px-2 pl-4">replay</span>
                    Listen Again
                </button>
            </div>
        </div>
        <div class="flex basis-3/5 justify-center">
            <div class="card-container flex-row-reverse broder items flex min-h-0 select-none items-center">
                <div tabindex="0"
                     class="one-click-card relative m-1.5 flex h-28 w-28 transform cursor-pointer items-center justify-center rounded-lg bg-gray-200 font-serif text-6xl shadow-lg ring-1 ring-gray-900/5 transition-all duration-200 focus-within:bg-slate-100 hover:m-0 hover:h-36 hover:w-36 hover:text-7xl hover:shadow-2xl"></div>
                <div tabindex="0"
                     class="one-click-card relative m-1.5 flex h-28 w-28 transform cursor-pointer items-center justify-center rounded-lg bg-gray-200 font-serif text-6xl shadow-lg ring-1 ring-gray-900/5 transition-all duration-200 focus-within:bg-slate-100 hover:m-0 hover:h-36 hover:w-36 hover:text-7xl hover:shadow-2xl"></div>
                <div tabindex="0"
                     class="one-click-card relative m-1.5 flex h-28 w-28 transform cursor-pointer items-center justify-center rounded-lg bg-gray-200 font-serif text-6xl shadow-lg ring-1 ring-gray-900/5 transition-all duration-200 focus-within:bg-slate-100 hover:m-0 hover:h-36 hover:w-36 hover:text-7xl hover:shadow-2xl"></div>
            </div>
        </div>
    </div>
    <div class="flex h-full basis-2/5 flex-col px-4 rounded-md">
        <div class="streak-container flex w-full place-items-center justify-between mb-2">
            <h5 class="px-2 text-xl font-medium">Streak</h5>
            <span id="streak-count"
                  class="h-fit w-fit rounded-lg bg-red-400 py-2 px-4 text-center text-xl font-bold text-white shadow-md">0</span>
        </div>
        <h5 class="text-xl font-medium my-2">Scoreboard</h5>
        <div class="h-full items-center overflow-y-auto mb-2">
            <figure class="highcharts-figure">
                <div id="chart-container" class="h-24">a</div>
            </figure>
        </div>
        <button class="rounded-md bg-teal-600 mx-auto px-8 py-2 text-lg font-medium text-white shadow transition hover:scale-90 hover:opacity-80">
            Finish
        </button>
    </div>
</div>

<script src="../chapter/exercise.js"></script>
</body>
</html>
