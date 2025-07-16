<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login | Pentagon Space</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(to right, #add8e6, #ffffff);
            font-family: 'Segoe UI', sans-serif;
        }

        .login-container {
            max-width: 450px;
            margin: 60px auto;
            background-color: white;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
        }

        .heading {
            color: #000080;
            font-size: 2.5rem;
            font-weight: bold;
        }

        .sub {
            color: #1e90ff;
            font-size: 1.2rem;
        }

        .success {
            color: green;
            font-weight: bold;
        }

        .failure {
            color: red;
            font-weight: bold;
        }

        .form-label {
            font-weight: 500;
        }

        .footer-text {
            font-size: 0.9rem;
        }

        .forgot-link, .signup-link {
            text-decoration: none;
            color: #1e90ff;
        }

        .forgot-link:hover, .signup-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="login-container">
        <div class="text-center">
            <h1 class="heading">Pentagon Space</h1>
            <h4 class="sub">Login</h4>

            <% String success = (String) request.getAttribute("success"); %>
            <% if (success != null) { %>
                <p class="success"><%= success %></p>
            <% } %>

            <% String error = (String) request.getAttribute("error"); %>
            <% if (error != null) { %>
                <p class="failure"><%= error %></p>
            <% } %>
        </div>

        <form action="Login" method="post">
            <div class="mb-3">
                <label class="form-label">Email address</label>
                <input type="email" name="mail" class="form-control" placeholder="Enter your email" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Password</label>
                <input type="password" name="password" class="form-control" placeholder="Enter your password" required>
            </div>

            <div class="d-grid mb-3">
                <button type="submit" class="btn btn-success">Login</button>
            </div>

            <div class="text-center mb-2">
                <a href="forgotPassword.jsp" class="forgot-link">Forgot password?</a>
            </div>

            <div class="text-center footer-text">
                Don't have an account? <a href="signup.jsp" class="signup-link">Signup</a>
            </div>
        </form>
    </div>
</div>

</body>
</html>
