package com.prashant.servletdemo.mvctwo;

import java.util.ArrayList;
import java.util.List;

public class StudentDataUtil {
	
	public static List<Student> getStudents() {
		
		// create an empty list
		List<Student> students = new ArrayList<>();
		
		// add sample data
		students.add(new Student("Mary", "Kom", "mary@gmail.com"));
		students.add(new Student("Prashant", "Srivastava", "prashant@gmail.com"));
		students.add(new Student("Prince", "Raj", "prince@gmail.com"));
		
		// return the list
		return students;
	}

}
