package in.pentagon.studentapp.consoleModel;

import java.util.Scanner;

import in.pentagon.studentapp.dao.StudentDAO;
import in.pentagon.studentapp.dao.StudentDAOImplenetation;
import in.pentagon.studentapp.dto.Student;

public class Signup {
	public static void signup() {
		Scanner sc = new Scanner(System.in);
		
		//creation of pojo class object
		Student s = new Student();
		
		StudentDAO sdao = new StudentDAOImplenetation();
		
		//Collecting data from user
		System.out.println("--------------------->Welcome to SignUp page------------------->");
		
		System.out.println("Enter the name:");
		s.setName(sc.next());
		
		System.out.println("Enter the phone number:");
		s.setPhone(sc.nextLong());
		
		System.out.println("Enter the branch:");
		s.setBranch(sc.next());
		
		System.out.println("Enter the mailId:");
		s.setMail(sc.next());
		
		System.out.println("Enter the location:");
		s.setLocation(sc.next());
		
		System.out.println("Enter the password");
		String password = sc.next();
		System.out.println("Enter the confirm password");
		String confirmPassword = sc.next();
		
		if(password.equals(confirmPassword)) {
		   s.setPassword(confirmPassword);
		   boolean res = sdao.insertStudent(s);
		   if(res) {
			   System.out.println("Data added sucessfully!!");
		   }
		   else {
			   System.out.println("Failed to add data");
		   }
		}
		else {
			System.out.println("Password mismatch....");
		}
		
		
	}

}
