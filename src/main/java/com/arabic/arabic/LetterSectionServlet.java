package com.arabic.arabic;

import com.arabic.arabic.beans.section.Prechapter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.jetbrains.annotations.NotNull;

import java.io.IOException;

import static com.arabic.arabic.CourseServlet.COURSES;
import static java.lang.Boolean.parseBoolean;
import static java.lang.Integer.parseInt;

@WebServlet("/letter")
public class LetterSectionServlet extends HttpServlet {
    @Override
    protected void doGet(@NotNull HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int course = parseInt(req.getParameter("course")),
                module = parseInt(req.getParameter("module")),
                chapter = parseInt(req.getParameter("chapter")),
                section = parseInt(req.getParameter("section"));

        if (parseBoolean(req.getParameter("prechapter"))) {
            try {
                req.setAttribute("section", ((Prechapter)
                        COURSES[course].modules()[module].chapters()[chapter].sections()[section]).followup()
                );
            } catch (ClassCastException e) {
                return;
            }
        } else {
            req.setAttribute("section", COURSES[course].modules()[module].chapters()[chapter].sections()[section]);
        }
        req.setAttribute("hints", (course | module | chapter | section) == 0);
        req.getRequestDispatcher("chapter/letter.jsp").forward(req, resp);

    }
}
