package in.pentagon.studentapp.consoleModel;

import java.util.Scanner;

import in.pentagon.studentapp.dao.StudentDAO;
import in.pentagon.studentapp.dao.StudentDAOImplenetation;
import in.pentagon.studentapp.dto.Student;

public class Delete {
  public static void delete() {
	  Scanner sc = new Scanner(System.in);
	  StudentDAO sdao = new StudentDAOImplenetation();
	  System.out.println("Enter the id to be deleted");
	  int id = sc.nextInt();
	  boolean res = sdao.deleteStudent(id);
	  if(res) {
		  System.out.println("Deleted Sucessfully");
	  }
	  else {
		  System.out.println("Failed to delete");
	  }
	  
	  
	  
  }

}
