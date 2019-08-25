package com.matrix.spring.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.matrix.spring.mvc.model.Student;

@Controller
@RequestMapping("/student")
public class StudentController {
	
	@RequestMapping("/showForm")
	public String showForm(Model model)
	{
		
		Student theStudent = new Student();
		
		model.addAttribute("student", theStudent);
		
		return "student-form";
		
	}
	
	
	@RequestMapping("/processForm")
	public String processForm(@ModelAttribute("student") Student theStudent) {
		
		System.out.println("Student : "+ theStudent.getFirstName() + " "+theStudent.getLastName());
		System.out.println("Country : " + theStudent.getCountry());
		
		return "student-confirmation";
	}

}
