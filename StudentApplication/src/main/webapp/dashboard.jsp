<%@ page import="in.pentagon.studentapp.dto.Student" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Dashboard | Pentagon Space</title>

    <!-- Bootstrap CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(to right, #f0f8ff, #e6f2ff);
            font-family: 'Segoe UI', sans-serif;
        }

        .navbar-brand {
            font-weight: bold;
            font-size: 1.5rem;
            color: #ffffff !important;
        }

        .nav-link {
            color: #ffffff !important;
        }

        .nav-link:hover {
            text-decoration: underline;
        }

        .btn-danger {
            margin-top: 5px;
        }

        .success {
            text-align: center;
            color: green;
            font-weight: bold;
        }

        .error {
            text-align: center;
            color: red;
            font-weight: bold;
        }

        .container-box {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
            margin-top: 30px;
        }

        .table th {
            background-color: #007bff;
            color: white;
        }

        .table td, .table th {
            vertical-align: middle;
        }
    </style>
</head>
<body>

<%
    Student s = (Student) session.getAttribute("student");
%>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Welcome, <%= s.getName() %></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="resetPassword.jsp">Reset Password</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="updateAccount.jsp">Update Data</a>
                </li>
                <li class="nav-item">
                    <form action="logout" method="post" class="d-flex">
                        <input class="btn btn-danger" type="submit" name="logout" value="Logout">
                    </form>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Dashboard Container -->
<div class="container container-box">
    <h2 class="text-center mb-4">Student Dashboard</h2>

    <% String success = (String) request.getAttribute("success"); %>
    <% if (success != null) { %>
        <div class="success"><%= success %></div>
    <% } %>

    <div class="table-responsive mt-4">
        <h4 class="mb-3">Your Details</h4>
        <table class="table table-bordered table-striped table-hover">
            <thead class="text-center">
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Phone</th>
                <th>Mail ID</th>
                <th>Branch</th>
                <th>Location</th>
            </tr>
            </thead>
            <tbody class="text-center">
            <tr>
                <td><%= s.getId() %></td>
                <td><%= s.getName() %></td>
                <td><%= s.getPhone() %></td>
                <td><%= s.getMail() %></td>
                <td><%= s.getBranch() %></td>
                <td><%= s.getLocation() %></td>
            </tr>
            </tbody>
        </table>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
