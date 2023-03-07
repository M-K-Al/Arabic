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
    <title>Document</title>
</head>
<body>
<div class="flex min-h-screen flex-col justify-center bg-gray-50 py-6 sm:py-10">
    <div class="mx-auto w-fit bg-white px-6 pt-10 pb-8 shadow-xl ring-1 ring-gray-900/5 sm:rounded-lg sm:px-10">
        <div class="flex flex-row gap-6">
            <div class="max-w-xl">
                <h3 class="pb-4 text-3xl font-bold capitalize text-gray-800">Title de Title!</h3>
                <p class="text-lg font-medium text-gray-500">Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                    Sed nisi ex, ultrices ullamcorper diam non, semper eleifend quam. Proin scelerisque vitae erat eu
                    interdum. Ut eros erat, auctor non mi vel, condimentum venenatis urna. Nulla nec dolor rutrum,
                    rhoncus orci at, efficitur velit. Duis lectus felis, fermentum quis vehicula, efficitur in diam.</p>
                <div class="my-4">
                    <div class="flex flex-col gap-4">
                        <div class="relative h-fit overflow-hidden rounded-md shadow-md">
                            <label class="block cursor-pointer bg-red-400 p-4 text-xl [&:has(input:checked)]:bg-opacity-70">
                                <input class="peer hidden" type="checkbox"/>
                                <div class="m-2 flex flex-row gap-2 peer-checked:[&>h5]:line-clamp-1">
                                    <span class="material-symbols-outlined !text-3xl text-white"> info </span>
                                    <h5 class="break-all text-ellipsis text-xl font-semibold capitalize text-white">test
                                        test test Lorem ipsum ipsum ipsum ipsum</h5>
                                </div>
                                <div class="h-full max-h-96 overflow-hidden duration-500 peer-checked:max-h-0 peer-checked:translate-y-8">
                                    <p class="flex p-2 text-justify text-lg text-gray-50">Lorem ipsum dolor sit amet,
                                        consectetur adipiscing elit. Sed nisi ex, ultrices ullamcorper diam non, semper
                                        eleifend quam. Proin scelerisque vitae erat eu interdum. Ut eros erat, auctor
                                        non mi vel, condimentum venenatis urna. Nulla nec dolor rutrum, rhoncus orci at,
                                        efficitur velit. Duis lectus felis, fermentum quis vehicula, efficitur in
                                        diam.</p>
                                </div>
                            </label>
                        </div>
                    </div>
                </div>
            </div>

            <div class="sticky top-10 mx-6 flex h-fit w-fit select-none flex-col items-center justify-center rounded-lg bg-red-50 text-center shadow-lg ring-1 ring-gray-900/5">
                <h1 class="px-10 font-serif text-[18rem] font-semibold">`</h1>
                <div title="listen"
                     class="min-w-full flex justify-center cursor-pointer rounded-b-lg py-2 shadow-sm transition-colors hover:bg-rose-200">
                    <span class="material-symbols-outlined !text-3xl">volume_up</span>
                </div>
            </div>

        </div>


        <div class="mx-auto flex justify-center pt-10 pb-4">
            <button class="rounded-md bg-teal-500 px-8 py-2 text-lg font-medium text-white shadow transition hover:scale-90 hover:opacity-75">
                Continue
            </button>
        </div>
    </div>
</div>
</body>
</html>
