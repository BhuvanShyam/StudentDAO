<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Signup</title>

    <!-- Bootstrap CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(to right, #add8e6, #ffffff);
            font-family: 'Segoe UI', sans-serif;
        }

        .heading {
            font-size: 3rem;
            font-weight: bold;
            color: #000080;
            margin-top: 30px;
        }

        .sub {
            color: #1e90ff;
            font-size: 1.5rem;
            margin-bottom: 30px;
        }

        .container-box {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            margin: auto;
        }

        .form-label {
            font-weight: bold;
        }

        .btn-primary {
            width: 100%;
        }

        .failure {
            color: red;
        }

        .success {
            color: green;
        }

        .form-text {
            font-size: 0.9rem;
        }
    </style>
</head>
<body>

<div class="container mt-5">
    <div class="text-center">
        <h1 class="heading">Pentagon Space</h1>
        <h3 class="sub">Application Form</h3>
        <% String error = (String) request.getAttribute("error"); %>
        <% if (error != null) { %>
            <p class="failure"><%= error %></p>
        <% } %>
    </div>

    <div class="container-box mt-4">
        <form action="signup" method="post">
            <div class="mb-3">
                <label class="form-label">Enter your Name:</label>
                <input type="text" name="name" class="form-control" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Enter the Phone number:</label>
                <input type="tel" name="phone" class="form-control" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Enter the Mail ID:</label>
                <input type="email" name="mail" class="form-control" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Enter the Branch:</label>
                <input type="text" name="branch" class="form-control" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Enter the Location:</label>
                <input type="text" name="loc" class="form-control" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Enter the Password:</label>
                <input type="password" name="password" class="form-control" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Confirm the Password:</label>
                <input type="password" name="confirm" class="form-control" required>
            </div>

            <div class="d-grid mb-3">
                <input class="btn btn-primary" type="submit" value="Create Account">
            </div>

            <div class="text-center">
                <span class="form-text">Already have an account? <a href="login.jsp">Login</a></span>
            </div>
        </form>
    </div>
</div>

</body>
</html>
