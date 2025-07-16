<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Forgot Password | Pentagon Space</title>

    <!-- Bootstrap CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(to right, #add8e6, #ffffff);
            font-family: 'Segoe UI', sans-serif;
        }

        .container-box {
            max-width: 500px;
            margin: 60px auto;
            background-color: #ffffff;
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
            margin-bottom: 20px;
        }

        .form-label {
            font-weight: 500;
        }

        .btn-custom {
            width: 100%;
        }

        .success {
            color: green;
            font-weight: bold;
        }

        .failure {
            color: red;
            font-weight: bold;
        }

        .btn-back {
            text-decoration: none;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="text-center">
        <h1 class="heading">Pentagon Space</h1>
        <h4 class="sub">Reset your password here</h4>

        <% String error = (String) request.getAttribute("error"); %>
        <% if (error != null) { %>
            <p class="failure"><%= error %></p>
        <% } %>
    </div>

    <div class="container-box mt-3">
        <form action="forgotPassword" method="post">
            <div class="mb-3">
                <label class="form-label">Phone Number</label>
                <input type="tel" name="phone" class="form-control" placeholder="Enter your phone number" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Email ID</label>
                <input type="email" name="mail" class="form-control" placeholder="Enter your email" required>
            </div>

            <div class="mb-3">
                <label class="form-label">New Password</label>
                <input type="password" name="password" class="form-control" placeholder="Enter new password" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Confirm Password</label>
                <input type="password" name="confirm" class="form-control" placeholder="Confirm new password" required>
            </div>

            <div class="d-grid gap-2 mb-2">
                <button class="btn btn-success" type="submit">Reset Password</button>
            </div>

            <div class="text-center">
                <a href="login.jsp" class="btn btn-primary btn-back">Back to Login</a>
            </div>
        </form>
    </div>
</div>

</body>
</html>
