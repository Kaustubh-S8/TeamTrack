<!doctype html>
<%@page import="com.ty.empapp.entity.Employee"%>
<%@page import="java.util.List"%>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Employee Management</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh; /* Ensure full viewport height */
            background: url('your-background-image.jpg') no-repeat center center/cover; /* Replace with your image */
            background-size: cover;
        }

        .container {
            width: 90%; /* Adjust width for responsiveness */
            max-width: 1200px; /* Maximum width for larger screens */
            padding: 30px;
            background: rgba(255, 255, 255, 0.8);
            border-radius: 10px;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.2);
            backdrop-filter: blur(8px);
            z-index: 10;
            margin: 20px auto; /* Center the container */
        }

        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 30px;
            font-size: 28px;
        }

        h6 {
            text-align: center;
            color: red;
            margin-bottom: 15px;
            font-size: 16px;
        }

        .table {
            background-color: white; /* Ensure table has a white background */
        }

        .table th, .table td {
            text-align: center;
        }

        .table thead th {
            background-color: #f0f0f0; /* Light background for table header */
        }

        a {
            text-decoration: none;
            color: #007bff;
        }

        a:hover {
            text-decoration: underline;
        }

        .add-employee-link {
            display: block;
            margin-top: 20px;
            text-align: center;
        }

        @media (max-width: 768px) {
            .container {
                padding: 20px;
            }

            .table th, .table td {
                font-size: 14px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Home Page</h1>
        <h6>${msg}</h6>

        <%
        List<Employee> employees = (List<Employee>) request.getAttribute("emps");
        %>

        <table class="table">
            <thead>
                <tr>
                    <th scope="col">Eid</th>
                    <th scope="col">Name</th>
                    <th scope="col">Email</th>
                    <th scope="col">Phone</th>
                    <th scope="col">Update</th>
                    <th scope="col">Delete</th>
                    <th scope="col">Send Email</th>
                </tr>
            </thead>
            <tbody>
                <%
                if (employees != null) {
                    for (Employee employee : employees) {
                %>
                <tr>
                    <th scope="row"><%=employee.getEid() %></th>
                    <td><%=employee.getName() %></td>
                    <td><%=employee.getEmail() %></td>
                    <td><%=employee.getPhone() %></td>
                    <td><a href="<%=request.getContextPath() %>/edit?eid=<%=employee.getEid() %>">Update</a></td>
                    <td><a href="<%=request.getContextPath() %>/delete?eid=<%=employee.getEid() %>">Delete</a></td>
                    <td><a href="<%=request.getContextPath() %>/send?eid=<%=employee.getEid() %>">Email</a></td>
                </tr>
                <%
                    }
                }
                %>
            </tbody>
        </table>

        <a href="add" class="add-employee-link">Add Employee</a>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
