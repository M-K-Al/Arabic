package com.arabic.arabic.beans.section;

import com.arabic.arabic.LetterSectionServlet;

public final class LetterCourseSection extends CourseSection {

    public LetterCourseSection() {
        super(LetterSectionServlet.class);
    }

    public LetterCourseSection(String name, String desc, int progress) {
        super(LetterSectionServlet.class, name, desc, progress);
    }

    @Override
    public String getURL(int course, int module, int chapter, int section) {
        return getURL(course, module, chapter, section, false);
    }

    public String getURL(int course, int module, int chapter, int section, boolean prechapter) {
        return "%s?course=%s&module=%s&chapter=%s&section=%s&prechapter=%b".formatted(getServletURL(),
                course,
                module,
                chapter,
                section,
                prechapter
        );
    }
}
