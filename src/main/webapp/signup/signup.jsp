<%--suppress ALL --%>
<%--
  Created by IntelliJ IDEA.
  User: mutae
  Date: 3/10/2023
  Time: 6:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sign Up</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://code.jquery.com/jquery-3.6.3.min.js"
            integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
</head>
<body>
<div class="relative flex min-h-screen flex-col justify-center overflow-hidden bg-gray-50">
    <div class="relative mx-auto w-full max-w-md">
        <h2 class="mb-8 text-center text-4xl font-bold leading-relaxed text-gray-800">Sign Up</h2>
        <div class="flex items-center justify-center gap-4 pb-4">
            <div tabindex="0"
                 class="flex w-fit cursor-pointer select-none items-center gap-6 rounded-md border px-6 py-2 text-center text-lg font-medium text-gray-700 shadow transition-colors duration-200 hover:bg-gray-200 hover:opacity-80">
                <div class="w-8">
                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                         viewBox="0 0 48 48">
                        <defs>
                            <path id="a"
                                  d="M44.5 20H24v8.5h11.8C34.7 33.9 30.1 37 24 37c-7.2 0-13-5.8-13-13s5.8-13 13-13c3.1 0 5.9 1.1 8.1 2.9l6.4-6.4C34.6 4.1 29.6 2 24 2 11.8 2 2 11.8 2 24s9.8 22 22 22c11 0 21-8 21-22 0-1.3-.2-2.7-.5-4z"/>
                        </defs>
                        <clipPath id="b">
                            <use xlink:href="#a" overflow="visible"/>
                        </clipPath>
                        <path clip-path="url(#b)" fill="#FBBC05" d="M0 37V11l17 13z"/>
                        <path clip-path="url(#b)" fill="#EA4335" d="M0 11l17 13 7-6.1L48 14V0H0z"/>
                        <path clip-path="url(#b)" fill="#34A853" d="M0 37l30-23 7.9 1L48 0v48H0z"/>
                        <path clip-path="url(#b)" fill="#4285F4" d="M48 48L17 24l-4-3 35-10z"/>
                    </svg>
                </div>
                <span>Google</span>
            </div>
            <div tabindex="0"
                 class="flex w-fit cursor-pointer select-none items-center gap-6 rounded-md border px-6 py-2 text-center text-lg font-medium text-gray-700 shadow transition-colors duration-200 hover:bg-gray-200 hover:opacity-80">
                <div class="w-8">
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 48 48">
                        <path fill="#0081fb"
                              d="M47,29.36l-2.193,1.663L42.62,29.5c0-0.16,0-0.33-0.01-0.5c0-0.16,0-0.33-0.01-0.5 c-0.14-3.94-1.14-8.16-3.14-11.25c-1.54-2.37-3.51-3.5-5.71-3.5c-2.31,0-4.19,1.38-6.27,4.38c-0.06,0.09-0.13,0.18-0.19,0.28 c-0.04,0.05-0.07,0.1-0.11,0.16c-0.1,0.15-0.2,0.3-0.3,0.46c-0.9,1.4-1.84,3.03-2.86,4.83c-0.09,0.17-0.19,0.34-0.28,0.51 c-0.03,0.04-0.06,0.09-0.08,0.13l-0.21,0.37l-1.24,2.19c-2.91,5.15-3.65,6.33-5.1,8.26C14.56,38.71,12.38,40,9.51,40 c-3.4,0-5.56-1.47-6.89-3.69C1.53,34.51,1,32.14,1,29.44l4.97,0.17c0,1.76,0.38,3.1,0.89,3.92C7.52,34.59,8.49,35,9.5,35 c1.29,0,2.49-0.27,4.77-3.43c1.83-2.53,3.99-6.07,5.44-8.3l1.37-2.09l0.29-0.46l0.3-0.45l0.5-0.77c0.76-1.16,1.58-2.39,2.46-3.57 c0.1-0.14,0.2-0.28,0.31-0.42c0.1-0.14,0.21-0.28,0.31-0.41c0.9-1.15,1.85-2.22,2.87-3.1c1.85-1.61,3.84-2.5,5.85-2.5 c3.37,0,6.58,1.95,9.04,5.61c2.51,3.74,3.82,8.4,3.97,13.25c0.01,0.16,0.01,0.33,0.01,0.5C47,29.03,47,29.19,47,29.36z"></path>
                        <linearGradient id="wSMw7pqi7WIWHewz2_TZXa" x1="42.304" x2="13.533" y1="24.75" y2="24.75"
                                        gradientUnits="userSpaceOnUse">
                            <stop offset="0" stop-color="#0081fb"/>
                            <stop offset=".995" stop-color="#0064e1"/>
                        </linearGradient>
                        <path fill="url(#wSMw7pqi7WIWHewz2_TZXa)"
                              d="M4.918,15.456 C7.195,11.951,10.483,9.5,14.253,9.5c2.184,0,4.354,0.645,6.621,2.493c2.479,2.02,5.122,5.346,8.419,10.828l1.182,1.967 c2.854,4.746,4.477,7.187,5.428,8.339C37.125,34.606,37.888,35,39,35c2.82,0,3.617-2.54,3.617-5.501L47,29.362 c0,3.095-0.611,5.369-1.651,7.165C44.345,38.264,42.387,40,39.093,40c-2.048,0-3.862-0.444-5.868-2.333 c-1.542-1.45-3.345-4.026-4.732-6.341l-4.126-6.879c-2.07-3.452-3.969-6.027-5.068-7.192c-1.182-1.254-2.642-2.754-5.067-2.754 c-1.963,0-3.689,1.362-5.084,3.465L4.918,15.456z"/>
                        <linearGradient id="wSMw7pqi7WIWHewz2_TZXb" x1="7.635" x2="7.635" y1="32.87" y2="13.012"
                                        gradientUnits="userSpaceOnUse">
                            <stop offset="0" stop-color="#0081fb"/>
                            <stop offset=".995" stop-color="#0064e1"/>
                        </linearGradient>
                        <path fill="url(#wSMw7pqi7WIWHewz2_TZXb)"
                              d="M14.25,14.5 c-1.959,0-3.683,1.362-5.075,3.465C7.206,20.937,6,25.363,6,29.614c0,1.753-0.003,3.072,0.5,3.886l-3.84,2.813 C1.574,34.507,1,32.2,1,29.5c0-4.91,1.355-10.091,3.918-14.044C7.192,11.951,10.507,9.5,14.27,9.5L14.25,14.5z"/>
                        <path d="M21.67,20.27l-0.3,0.45l-0.29,0.46c0.71,1.03,1.52,2.27,2.37,3.69l0.21-0.37c0.02-0.04,0.05-0.09,0.08-0.13 c0.09-0.17,0.19-0.34,0.28-0.51C23.19,22.5,22.39,21.29,21.67,20.27z M24.94,15.51c-0.11,0.14-0.21,0.28-0.31,0.42 c0.73,0.91,1.47,1.94,2.25,3.1c0.1-0.16,0.2-0.31,0.3-0.46c0.04-0.06,0.07-0.11,0.11-0.16c0.06-0.1,0.13-0.19,0.19-0.28 c-0.76-1.12-1.5-2.13-2.23-3.03C25.15,15.23,25.04,15.37,24.94,15.51z"
                              opacity=".05"/>
                        <path d="M21.67,20.27l-0.3,0.45c0.71,1.02,1.51,2.24,2.37,3.65c0.09-0.17,0.19-0.34,0.28-0.51C23.19,22.5,22.39,21.29,21.67,20.27 z M24.63,15.93c0.73,0.91,1.47,1.94,2.25,3.1c0.1-0.16,0.2-0.31,0.3-0.46c-0.77-1.14-1.52-2.16-2.24-3.06 C24.83,15.65,24.73,15.79,24.63,15.93z"
                              opacity=".07"/>
                    </svg>
                </div>
                <span>Meta</span>
            </div>
        </div>
        <div class="my-6 max-w-md border-2"></div>
        <div class="flex flex-col gap-4">
            <div class="flex flex-col gap-2">
                <label for="signup-username">Username</label>
                <input type="text" autocomplete="name" name="signup-username" id="signup-username"
                       class="appearance-none rounded-md border-2 border-gray-400 px-3 py-2 outline-0 focus:ring-0"/>
            </div>
            <div class="flex flex-col gap-2">
                <label for="signup-email">Email</label>
                <input type="email" autocomplete="email" name="signup-email" id="signup-email"
                       class="appearance-none rounded-md border-2 border-gray-400 px-3 py-2 outline-0 focus:ring-0"/>
            </div>
            <div class="flex flex-col gap-2">
                <label for="signup-password">Password</label>
                <input type="password" autocomplete="new-password" name="signup-password" id="signup-password"
                       class="appearance-none rounded-md border-2 border-gray-400 px-3 py-2 outline-0 focus:ring-0"/>
            </div>
        </div>
        <div class="w-full">
            <div class="my-8 max-w-md border-2"></div>
            <div class="mb-4 flex">
                <input type="checkbox" name="signup-agreement" id="signup-agreement"
                       class="mr-4 h-5 w-5 self-center cursor-pointer"/>
                <span>I agree to the <a class="link">Privacy Policy</a> and <a class="link">Terms of Service</a>.</span>
            </div>

            <button class="w-full rounded-md bg-teal-600 py-2 text-2xl font-medium text-white shadow-sm transition hover:scale-90 hover:opacity-80">
                Sign up
            </button>
        </div>
    </div>
    <div class="pb-10"></div>
</div>
</body>
</html>
