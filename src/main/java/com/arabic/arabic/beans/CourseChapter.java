package com.arabic.arabic.beans;

import com.arabic.arabic.beans.section.CourseSection;

public record CourseChapter(String name, CourseSection[] sections) {
}
