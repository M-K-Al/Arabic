package com.arabic.arabic;

import com.google.gson.Gson;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet(value = "/exercise")
public class ExerciseServlet extends HttpServlet {

    public static final Map<String, char[]> EXERCISES = new HashMap<>(Map.of(
            "1", new char[]{'ا', 'ب', 'ت'},
            "2", new char[]{'ث', 'ج', 'ح'},
            "3", new char[]{'خ', 'د', 'ذ'},
            "4", new char[]{'ر', 'ز', 'س'},
            "5", new char[]{'ش', 'ص', 'ض'},
            "6", new char[]{'ط', 'ظ', 'ع'},
            "7", new char[]{'غ', 'ف', 'ق'},
            "8", new char[]{'ك', 'ل', 'م'},
            "9", new char[]{'ن', 'ه', 'و'}
    ));

    public static final String LETTER_EXERCISES = new Gson().toJson(EXERCISES);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("letterExercises", LETTER_EXERCISES);
        req.getRequestDispatcher("chapter/exercise.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) {

    }
}
