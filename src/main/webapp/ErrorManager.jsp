<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Ошибка</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500&family=Montserrat:wght@400;600&display=swap" rel="stylesheet">
    <style>
        body {
            background-color: #F4F1E2;
            color: #513229;
            font-family: 'Inter', sans-serif;
            margin: 0;
            padding: 50px;
            display: flex;
            justify-content: center;
        }
        .error-card {
            background-color: #fff;
            padding: 40px;
            border-radius: 8px;
            border-top: 5px solid #d9534f;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.05);
            text-align: center;
            max-width: 450px;
            width: 100%;
        }
        h3 {
            font-family: 'Montserrat', sans-serif;
            color: #d9534f;
            font-size: 1.5em;
            margin-top: 0;
        }
        p {
            line-height: 1.6;
        }
        .btn {
            display: inline-block;
            margin-top: 20px;
            background-color: #513229;
            color: #F4F1E2;
            text-decoration: none;
            padding: 12px 25px;
            border-radius: 4px;
            font-family: 'Montserrat', sans-serif;
            font-weight: 600;
            text-transform: uppercase;
            font-size: 0.9em;
        }
        .btn:hover {
            background-color: #3b241e;
        }
    </style>
</head>
<body>
    <div class="error-card">
        <h3>Упс, ошибка!</h3>
        <p><%= request.getAttribute("error") != null ? request.getAttribute("error") : "Произошла неизвестная ошибка." %></p>
        <p>Пожалуйста, вернитесь на главную страницу и выберите категорию из списка.</p>
        <a href="index.jsp" class="btn">Попробовать снова</a>
    </div>
</body>
</html>