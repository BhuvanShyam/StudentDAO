
# 🎓 StudentApplication

A web-based student management system built using **JSP**, **Servlets**, **JDBC**, and the **DAO (Data Access Object)** design pattern. This project was developed during training at **Pentagon Space**.

---

## 🛠️ Tech Stack

- **Frontend**: HTML, CSS, JSP  
- **Backend**: Java (Servlets), JDBC  
- **Database**: MySQL  
- **Architecture**: MVC with DAO Pattern  
- **Server**: Apache Tomcat  

---

## 📌 Features

- ✅ Add new students  
- 📋 View all student records  
- ✏️ Edit student details  
- ❌ Delete student records  
- ✅ Input validation  
- 🧠 Clean separation of concerns using DAO pattern  

---

## 📁 Project Structure

```
StudentApplication/
├── src/
│   ├── com.dao/              # Data Access Objects
│   ├── com.model/            # JavaBeans (POJOs)
│   ├── com.servlet/          # Controllers (Servlets)
├── WebContent/
│   ├── index.jsp             # Home page
│   ├── addStudent.jsp        # Add form
│   ├── updateStudent.jsp     # Update form
│   ├── listStudents.jsp      # Display all students
├── lib/                      # External libraries (e.g., MySQL Connector)
├── web.xml                   # Deployment descriptor
```

---

## 🔧 Setup Instructions

### 1. Clone the Repository
```bash
git clone https://github.com/BhuvanShyam/StudentDAO.git
```

### 2. Import the Project
- Open Eclipse / IntelliJ / NetBeans  
- Import the project as a **Dynamic Web Project**

### 3. MySQL Database Setup
```sql
CREATE DATABASE student_db;
```

- Create a table:
```sql
CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    course VARCHAR(100)
);
```

- Update DB credentials in your DAO class:
```java
String jdbcURL = "jdbc:mysql://localhost:3306/student_db";
String jdbcUsername = "root";
String jdbcPassword = "yourpassword";
```

### 4. Deploy & Run
- Add MySQL JDBC Driver to `lib/` (e.g., `mysql-connector-java.jar`)  
- Run the project on **Apache Tomcat**  
- Visit:
```
http://localhost:8080/StudentApplication/
```

---

## 📸 Screenshots

> *(Add screenshots here if needed, e.g. Add Student, View All, Update, Delete)*

---

## 🙋‍♂️ Author

**Bhuvan Shyam M**  
Java Full Stack Trainee – Pentagon Space  

- 🔗 [LinkedIn](https://www.linkedin.com/in/bhuvanshyam/)
- 📧 bhuvanshyam@example.com *(Replace with your email)*

---

## 📝 License

This project is intended for learning and academic purposes. Licensed under the [MIT License](LICENSE).

