<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Список идей</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500&family=Montserrat:wght@400;600&display=swap" rel="stylesheet">
    <style>
        body {
            background-color: #F4F1E2;
            color: #513229;
            font-family: 'Inter', sans-serif;
            margin: 0;
            padding: 50px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        .container {
            background-color: #D8EBF9;
            padding: 40px;
            border-radius: 8px;
            border: 1px solid #D7D4B1;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.05);
            max-width: 600px;
            width: 100%;
            text-align: center;
        }
        h2 {
            font-family: 'Montserrat', sans-serif;
            font-weight: 600;
            color: #513229;
            font-size: 1.8em;
            margin-top: 0;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color: #fff;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 2px 8px rgba(0,0,0,0.05);
        }
        th, td {
            border: 1px solid #eee;
            padding: 15px;
            text-align: left;
        }
        th {
            background-color: #513229;
            color: #F4F1E2;
            font-family: 'Montserrat', sans-serif;
            font-weight: 600;
        }
        .back-link {
            display: inline-block;
            margin-top: 25px;
            color: #513229;
            text-decoration: none;
            font-weight: 500;
            font-family: 'Montserrat', sans-serif;
            border-bottom: 1px solid #513229;
        }
        .back-link:hover {
            color: #3b241e;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Идеи для категории: <%= request.getAttribute("selectedCategory") %></h2>

        <table>
            <tr>
                <th>Идея</th>
                <th>Категория</th>
                <th style="text-align: center;">♡</th>
            </tr>
            <%
                String cat = (String) request.getAttribute("selectedCategory");
                if ("movies".equals(cat)) {
            %>
            <tr><td>Посмотреть 'Начало'</td><td>Фильмы</td><td style="text-align: center;">Запланировано</td></tr>
            <% } else if ("food".equals(cat)) { %>
            <tr><td>Приготовить пасту Карбонара</td><td>Еда</td><td style="text-align: center;">Выполнено</td></tr>
            <% } else if ("walks".equals(cat)) { %>
            <tr><td>Прогулка по набережной</td><td>Прогулки</td><td style="text-align: center;">Запланировано</td></tr>
            <% } %>
        </table>

        <a href="index.jsp" class="back-link">Вернуться назад</a>
    </div>
</body>
</html>