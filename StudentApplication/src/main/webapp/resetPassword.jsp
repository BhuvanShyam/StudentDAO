<%@ page import="in.pentagon.studentapp.dto.Student" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Reset Password | Pentagon Space</title>

    <!-- Bootstrap CDN -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">

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

        .btn-group {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }

        .success {
            color: green;
            text-align: center;
            font-weight: bold;
        }

        .failure {
            color: red;
            text-align: center;
            font-weight: bold;
        }
    </style>
</head>
<body>

<%
    Student s = (Student) session.getAttribute("student");
%>

<div class="text-center">
    <h1 class="heading">Pentagon Space</h1>
    <h4 class="sub">Reset Your Password</h4>

    <% String error = (String) request.getAttribute("error"); %>
    <% if (error != null) { %>
        <p class="failure"><%= error %></p>
    <% } %>
</div>

<div class="form-container">
    <form action="resetPassword" method="post">
        <div class="mb-3">
            <label class="form-label">Phone Number</label>
            <input type="tel" name="phone" class="form-control" value="<%= s.getPhone() %>" required>
        </div>

        <div class="mb-3">
            <label class="form-label">Mail ID</label>
            <input type="email" name="mail" class="form-control" value="<%= s.getMail() %>" required>
        </div>

        <div class="mb-3">
            <label class="form-label">New Password</label>
            <input type="password" name="password" class="form-control" placeholder="Enter new password" required>
        </div>

        <div class="mb-3">
            <label class="form-label">Confirm Password</label>
            <input type="password" name="confirm" class="form-control" placeholder="Confirm new password" required>
        </div>

        <div class="btn-group">
            <button type="submit" class="btn btn-success w-50 me-2">Reset Password</button>
            <a href="login.jsp" class="btn btn-primary w-50">Back to Login</a>
        </div>
    </form>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
