package com.arabic.arabic;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.jetbrains.annotations.NotNull;

import java.io.IOException;

import static com.arabic.arabic.CourseServlet.COURSES;
import static java.lang.Integer.parseInt;

@WebServlet("/prechapter")
public class PrechapterServlet extends HttpServlet {
    @Override
    protected void doGet(@NotNull HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int course = parseInt(req.getParameter("course")),
                module = parseInt(req.getParameter("module")),
                chapter = parseInt(req.getParameter("chapter")),
                section = parseInt(req.getParameter("section"));
        req.setAttribute("prechapter", COURSES[course].modules()[module].chapters()[chapter].sections()[section]);
        req.getRequestDispatcher("chapter/prechapter.jsp").forward(req, resp);
    }
}
