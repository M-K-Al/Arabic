package com.arabic.arabic;

import com.arabic.arabic.beans.Course;
import com.arabic.arabic.beans.CourseChapter;
import com.arabic.arabic.beans.CourseModule;
import com.arabic.arabic.beans.CourseSection;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.jetbrains.annotations.NotNull;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet(value = "")
public class IndexServlet extends HttpServlet {

    public static final CourseSection[] ALPHABET_SECTIONS = new CourseSection[]{
            new CourseSection("Alif", "The 1<sup>st</sup> letter.", 100),
            new CourseSection("Baa, Taa, & Thaa", "The 2<sup>nd</sup>, 3<sup>rd</sup>, and 4<sup>th</sup> letters.", 100),
            new CourseSection("Jiim, Haa, & Khaa", "The 5<sup>th</sup>, 6<sup>th</sup>, and 7<sup>th</sup> letters.", 100),
            new CourseSection("Daal & Dhaal", "The 8<sup>th</sup> and 9<sup>th</sup> letters.", 100),
            new CourseSection("Raa & Zaa", "The 10<sup>th</sup> and 11<sup>th</sup> letters.", 100),
            new CourseSection("Siin & Shiin", "The 12<sup>th</sup> and 13<sup>th</sup> letters.", 100),
            new CourseSection("Saad & Daad", "The 14<sup>th</sup> and 15<sup>th</sup> letters.", 100),
            new CourseSection("Taa & Dhaa", "The 16<sup>th</sup> and 17<sup>th</sup> letters.", 100),
            new CourseSection("Ain & Ghain", "The 18<sup>th</sup> and 19<sup>th</sup> letters.", 100),
            new CourseSection("Faa & Qaat", "The 20<sup>th</sup> and 21<sup>st</sup> letters.", 100),
            new CourseSection("Kaaf & Laam", "The 22<sup>nd</sup> and 23<sup>rd</sup> letters.", 100),
            new CourseSection("Miin & Nuun", "The 24<sup>th</sup> and 25<sup>th</sup> letters.", 0),
            new CourseSection("Haa & Waaw", "The 26<sup>th</sup> and 27<sup>th</sup> letters.", 0),
            new CourseSection("Yaa", "The 28<sup>th</sup> letter.", 0)
    };
    public static final CourseChapter ALPHABET = new CourseChapter("The Alphabet", ALPHABET_SECTIONS);

    public static final Course[] COURSES = new Course[]{
            new Course("Base", new CourseModule[]{
                    new CourseModule("Newbie", new CourseChapter[]{ALPHABET}),
                    new CourseModule("Beginner", new CourseChapter[]{}),
                    new CourseModule("Intermediate", new CourseChapter[]{}),
                    new CourseModule("Advanced", new CourseChapter[]{}),
                    new CourseModule("Expert", new CourseChapter[]{}),
                    new CourseModule("Master", new CourseChapter[]{})
            })
    };


    public void doGet(@NotNull HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        req.setAttribute("courses", COURSES);
        req.setAttribute("alphabet", ALPHABET);
        req.getRequestDispatcher("index.jsp").forward(req, resp);
    }

}