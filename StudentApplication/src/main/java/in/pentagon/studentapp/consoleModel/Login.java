package in.pentagon.studentapp.consoleModel;

import java.util.ArrayList;
import java.util.Scanner;

import in.pentagon.studentapp.dao.StudentDAO;
import in.pentagon.studentapp.dao.StudentDAOImplenetation;
import in.pentagon.studentapp.dto.Student;


public class Login {
	public static void login() {
		Scanner sc = new Scanner(System.in);
		Student s = new Student();
		StudentDAO sdao = new StudentDAOImplenetation();
		Student res = null;
		System.out.println("--------------->Welcome to login page--------------------->");
		System.out.println("Enter the mailId:");
		String mail = sc.next();
		System.out.println("Enter the password:");
	    String password = sc.next();
	    res = sdao.getStudent(mail,password);
		if(res!=null) {
			System.out.println("Mr." + res.getName() + " Welcome Again!!");
			int choice = 0;
			do {
			    System.out.println("1. View your account:");
			    System.out.println("2. Update the profile");
			    System.out.println("3. Change password");
			    System.out.println("4. Search user");
			    System.out.println("5. Logout");
			    if(res.getId() == 1) {
			    	System.out.println("6. View all users:");
			    	System.out.println("7. delete a user");
			    }
			    choice = sc.nextInt();
			    sc.nextLine();
			    
			    switch(choice) {
			    case 1: System.out.println(res);
			    	break;
			    case 2: Update.update(res);
			    	break;
			    case 3: Password.reset(res);
			    	break;
			    case 4: {
			    	System.out.println("Enter the name to search!!");
			    	String name = sc.nextLine();
			    	Search.search(name);
			    	break;
			    }
			    case 5: System.out.println("Logging out!!");
			            return;
			    case 6: ArrayList<Student> list = sdao.getStudent();
			            for(Student s1:list) {
			            	System.out.println(s1);;
			            }
			    	break;
			    case 7: Delete.delete();
			    	break;
			    default: System.out.println("Invalid choice, Enter valid choice");
			    break;
			    }
			}while(choice!=8);
		}
		else {
			System.out.println("Failed to login");
		}
		
		
		
		
	}

}
