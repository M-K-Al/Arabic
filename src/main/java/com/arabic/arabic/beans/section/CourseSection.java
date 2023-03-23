package com.arabic.arabic.beans.section;

import jakarta.servlet.Servlet;
import jakarta.servlet.annotation.WebServlet;
import org.jetbrains.annotations.Nullable;

public abstract class CourseSection {
    private final Class<? extends Servlet> servletClass;
    @Nullable
    private String name;
    @Nullable
    private String desc;
    private int progress;

    protected CourseSection(Class<? extends Servlet> servletClass) {
        this.servletClass = servletClass;
    }

    protected CourseSection(Class<? extends Servlet> servletClass, @Nullable String name, @Nullable String desc, int progress) {
        this.servletClass = servletClass;
        this.progress = progress;
        this.name = name;
        this.desc = desc;
    }

    protected abstract String getURL(int course, int Module, int chapter, int section);

    public String getServletURL() {
        return servletClass.getAnnotation(WebServlet.class).value()[0];
    }

    public String name() {
        return name;
    }

    public String desc() {
        return desc;
    }

    public int progress() {
        return progress;
    }
}
