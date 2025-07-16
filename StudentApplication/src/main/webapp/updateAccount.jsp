<%@ page import="in.pentagon.studentapp.dto.Student" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Update Account | Pentagon Space</title>

    <!-- Bootstrap CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(to right, #add8e6, #ffffff);
            font-family: 'Segoe UI', sans-serif;
        }

        .heading {
            color: #000080;
            font-size: 2.5rem;
            font-weight: bold;
            margin-top: 30px;
        }

        .sub {
            color: #1e90ff;
            font-size: 1.2rem;
            margin-bottom: 20px;
        }

        .form-container {
            max-width: 600px;
            margin: 30px auto;
            background-color: #ffffff;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
        }

        .form-label {
            font-weight: 500;
        }

        .btn-custom {
            width: 100%;
        }

        .btn-group {
            display: flex;
            justify-content: space-between;
        }

        .success {
            color: green;
            text-align: center;
        }

        .failure {
            color: red;
            text-align: center;
        }
    </style>
</head>
<body>

<%
    Student s = (Student) session.getAttribute("student");
%>

<div class="text-center">
    <h1 class="heading">Pentagon Space</h1>
    <h4 class="sub">Update Your Account</h4>
</div>

<div class="form-container">
    <form action="updateAccount" method="post">
        <div class="mb-3">
            <label class="form-label">Name</label>
            <input type="text" name="name" class="form-control" value="<%= s.getName() %>" required>
        </div>

        <div class="mb-3">
            <label class="form-label">Phone Number</label>
            <input type="tel" name="phone" class="form-control" value="<%= s.getPhone() %>" required>
        </div>

        <div class="mb-3">
            <label class="form-label">Mail ID</label>
            <input type="email" name="mail" class="form-control" value="<%= s.getMail() %>" required>
        </div>

        <div class="mb-3">
            <label class="form-label">Branch</label>
            <input type="text" name="branch" class="form-control" value="<%= s.getBranch() %>" required>
        </div>

        <div class="mb-3">
            <label class="form-label">Location</label>
            <input type="text" name="loc" class="form-control" value="<%= s.getLocation() %>" required>
        </div>

        <div class="btn-group mt-4">
            <button class="btn btn-success btn-custom me-2" type="submit">Update Account</button>
            <a href="dashboard.jsp" class="btn btn-primary btn-custom">Back to Dashboard</a>
        </div>
    </form>
</div>

</body>
</html>
