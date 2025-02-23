<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Register Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background: url('your-background-image.jpg') no-repeat center center/cover;
            background-size: cover;
        }

        .container {
            width: 400px;
            padding: 30px;
            background: rgba(255, 255, 255, 0.8);
            border-radius: 10px;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.2);
            backdrop-filter: blur(8px);
            z-index: 10;
        }

        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 30px;
            font-size: 28px;
        }

        .form-label {
            position: absolute;
            left: 10px;
            top: 16px;
            font-size: 16px;
            color: #aaa;
            pointer-events: none;
            transition: all 0.3s ease;
        }

        .input-container {
            position: relative;
            margin-bottom: 20px;
        }

        .form-control {
            width: 100%;
            padding: 12px;
            padding-left: 10px;
            margin-top: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: transparent;
            font-size: 16px;
            color: #333;
            transition: all 0.3s ease;
        }

        .form-control:focus + .form-label,
        .form-control:valid + .form-label {
            top: -10px;
            left: 10px;
            font-size: 12px;
            color: #4CAF50;
        }

        .btn-primary {
            width: 100%;
            padding: 12px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .btn-primary:hover {
            background-color: #45a049;
        }

        a {
            display: block;
            margin-top: 15px;
            text-align: center;
            color: #007bff;
            text-decoration: none;
            font-size: 14px;
        }

        a:hover {
            text-decoration: underline;
        }

        @media (max-width: 480px) {
            .container {
                width: 90%;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Register Page</h1>
        <form action="save" method="post">
            <div class="input-container">
                <input name="name" type="text" class="form-control" id="name" required>
                <label for="name" class="form-label">Name</label>
            </div>
            <div class="input-container">
                <input type="email" name="email" class="form-control" id="email" required>
                <label for="email" class="form-label">Email address</label>
            </div>
            <div class="input-container">
                <input type="number" name="phone" class="form-control" id="phone" required>
                <label for="phone" class="form-label">Phone</label>
            </div>
            <div class="input-container">
                <input type="password" name="password" class="form-control" id="password" required>
                <label for="password" class="form-label">Password</label>
            </div>
            <button type="submit" class="btn btn-primary">Register</button>
        </form>
        <a href="login">Login Page</a>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
