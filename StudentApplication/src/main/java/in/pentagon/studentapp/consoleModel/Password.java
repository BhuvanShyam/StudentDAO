package in.pentagon.studentapp.consoleModel;

import java.util.Scanner;

import in.pentagon.studentapp.dao.StudentDAO;
import in.pentagon.studentapp.dao.StudentDAOImplenetation;
import in.pentagon.studentapp.dto.Student;

public class Password {
	public static void forgot() {
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter the mailId:");
		String mail = sc.next();
		System.out.println("Enter the phone number!");
		Long phone = sc.nextLong();
		Student s = new Student();
		StudentDAO sdao = new StudentDAOImplenetation();
	    s = sdao.getStudent(phone,mail);
	    System.out.println("Enter the password!");
	    String pass = sc.next();
	    System.out.println("Confirm the password");
	    String cnfpass = sc.next();
	    if(pass.equals(cnfpass)) {
	    	 s.setPassword(pass);
	    	 boolean res  = sdao.updateStudent(s);
	 	    if(res) {
	 	    	System.out.println("password updated SucessFully");
	 	    }
	 	    else {
	 	    	System.out.println("password failed to update");
	 	    }
	    }
	    else {
	    	System.out.println("password mismatch");
	    }	
		
	}
	
	public static void reset(Student s) {
		Scanner sc = new Scanner(System.in);
		StudentDAO sdao = new StudentDAOImplenetation();
		System.out.println("Enter the password!");
	    String pass = sc.next();
	    System.out.println("Confirm the password");
	    String cnfpass = sc.next();
	    if(pass.equals(cnfpass)) {
	    	 s.setPassword(pass);
//	    	 System.out.println(s);
	    	 boolean res  = sdao.updateStudent(s);
	 	    if(res) {
	 	    	System.out.println("password updated Sucessfully");
	 	    }
	 	    else {
	 	    	System.out.println("password failed to update");
	 	    }
	    }
	    else {
	    	System.out.println("password mismatch");
	    }	
		
	}

}
