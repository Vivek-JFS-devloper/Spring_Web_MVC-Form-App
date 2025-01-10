package in.ramesh.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import in.ramesh.binding.Student;
import in.ramesh.entity.StudentEntity;
import in.ramesh.repository.StudebtRepository;

@Controller
public class StudentController {
	@Autowired
	StudebtRepository repository;
	
	
	@RequestMapping("/")
	public String loadForm(Model model) {
		loadFormData(model);
		String name = "Ramesh";
		return "index";
	}

	private void loadFormData(Model model) {
		List<String> courseList = new ArrayList<>();
		courseList.add("java");
		courseList.add("python");
		courseList.add("aws");
		courseList.add("sring-boot");
		courseList.add("c++");
		courseList.add("Angular");
		
		List<String> timinList = new ArrayList<>();
		timinList.add("Morning");
		timinList.add("Afternoon");
		timinList.add("Evening");
		Student student = new Student();
		
		model.addAttribute("course", courseList);
		model.addAttribute("timing", timinList);
		model.addAttribute("student", student);
	}
	
	@PostMapping("/submitForm")
	public String submintData(Student s,Model model) {
		StudentEntity entity = new StudentEntity();
		BeanUtils.copyProperties(s, entity);
		entity.setTimings(Arrays.toString(s.getTimings()));
		model.addAttribute("sms", "Save student data");
		System.err.println(s);
		loadFormData(model);
		repository.save(entity);
		return "index";
	}
	
	@GetMapping("/deta")
	public String getDtails(Model model) {
		List<StudentEntity> list = repository.findAll();
		model.addAttribute("student", list);
		
		return "data";
	}
}
