package com.arabic.arabic.beans.section;

import com.arabic.arabic.PrechapterServlet;
import org.jetbrains.annotations.NotNull;

import java.util.Objects;

public final class Prechapter extends CourseSection {
    @NotNull
    private final String content;
    @NotNull
    private final CourseSection followup;

    public Prechapter(@NotNull String name, @NotNull String desc, int progress, @NotNull String content, @NotNull CourseSection followup) {
        super(PrechapterServlet.class, name, desc, progress);
        this.followup = followup;
        this.content = content;
    }

    @Override
    public String getURL(int course, int module, int chapter, int section) {
        return "%s?course=%s&module=%s&chapter=%s&section=%s".formatted(getServletURL(), course, module, chapter, section);
    }

    public String content() {
        return content;
    }

    public CourseSection followup() {
        return followup;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == this) return true;
        if (obj == null || obj.getClass() != this.getClass()) return false;
        var that = (Prechapter) obj;
        return Objects.equals(this.content, that.content);
    }

    @Override
    public String toString() {
        return "Prechapter{" +
                "desc='" + content + '\'' +
                ", followup=" + followup +
                "} " + super.toString();
    }
}
