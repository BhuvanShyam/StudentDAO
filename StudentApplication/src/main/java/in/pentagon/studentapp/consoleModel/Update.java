package in.pentagon.studentapp.consoleModel;

import java.sql.SQLException;
import java.util.*;

import in.pentagon.studentapp.dao.StudentDAO;
import in.pentagon.studentapp.dao.StudentDAOImplenetation;
import in.pentagon.studentapp.dto.Student;

public class Update {
	public static void update(Student s) {
		Scanner sc = new Scanner(System.in);
		StudentDAO sdao = new StudentDAOImplenetation();
		System.out.println("what you need to update?");
		int choice = 0;
		do {
			    System.out.println("1. update name");
			    System.out.println("2. update password");
			    System.out.println("3. update mailId");
			    System.out.println("4. update location");
			    System.out.println("5. update phone number");
			    System.out.println("6. update branch");
			    System.out.println("7. Exit");
			    choice = sc.nextInt();
			    sc.nextLine();
			    switch(choice) {
			    case 1:
			    	System.out.println("Enter the name to be updated!!");
			    	s.setName(sc.nextLine());
			    break;
			    case 2:
			    	System.out.println("Enter the password to be updated");
			    	s.setPassword(sc.next());
			    break;
			    case 3:
			    	System.out.println("Enter the new mailId:");
			    	s.setMail(sc.next());
			    break;
			    case 4:
			    	System.out.println("Enter the location to be updated");
			    	s.setLocation(sc.next());
			    break;
			    case 5:
			    	System.out.println("Enter the phone number to be updated");
			    	s.setPhone(sc.nextLong());
			    break;
			    case 6:
			    	System.out.println("Enter the branch to be updated");
			    	s.setBranch(sc.next());
			    break;	
			    case 7:
			    	System.out.println("Backing to home page");
			    break;	
			    default:
			    	System.out.println("Invalid choice, Enter correct choice");
			    }
			    boolean res = sdao.updateStudent(s);
				if(res) {
					System.out.println("Updated SucessFully");
				}
				else {
					System.out.println("Failed to update");
				}
				
		}while(choice!=7);
		
		
		}
	}
