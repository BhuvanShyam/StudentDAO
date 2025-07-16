package in.pentagon.studentapp.consoleModel;

import java.util.ArrayList;

import in.pentagon.studentapp.dao.StudentDAO;
import in.pentagon.studentapp.dao.StudentDAOImplenetation;
import in.pentagon.studentapp.dto.Student;

public class Search {
	public static void search(String name) {
		ArrayList<Student> list = new ArrayList<>();
		StudentDAO sdao = new StudentDAOImplenetation();
		list = sdao.getStudent(name);
		 if (list == null || list.isEmpty()) {
	            System.out.println("No results found!");
	            return;
	        }
		 else {
	        for (Student s : list) {
	            System.out.println(s);  
	        }
		 }
	}

}
