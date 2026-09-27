<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Настройки профиля досуга</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500&family=Montserrat:wght@400;600&family=Jost:wght@400;500&display=swap" rel="stylesheet">
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
        .container {
            background-color: #D8EBF9;
            padding: 50px 40px;
            border-radius: 8px;
            border: 1px solid #D7D4B1;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.05);
            text-align: center;
            max-width: 450px;
            width: 100%;
        }
        h2 {
            font-family: 'Montserrat', sans-serif;
            font-weight: 600;
            color: #513229;
            font-size: 2em;
            margin: 0 0 10px 0;
        }
        .subtitle {
            font-family: 'Montserrat', sans-serif;
            font-weight: 400;
            font-size: 0.9em;
            letter-spacing: 3px;
            text-transform: uppercase;
            color: #513229;
            margin-bottom: 35px;
            opacity: 0.8;
        }
        label {
            font-family: 'Inter', sans-serif;
            font-weight: 500;
            font-size: 0.9em;
            display: block;
            margin-bottom: 8px;
            text-align: left;
        }
        select {
            font-family: 'Jost', sans-serif;
            font-size: 1em;
            padding: 12px 15px;
            margin-bottom: 25px;
            border: 1px solid #D7D4B1;
            border-radius: 4px;
            width: 100%;
            box-sizing: border-box;
            background-color: #F4F1E2;
            color: #513229;
            outline: none;
            transition: border-color 0.2s;
        }
        select:focus {
            border-color: #513229;
        }
        input[type="submit"] {
            font-family: 'Montserrat', sans-serif;
            font-weight: 600;
            background-color: #513229;
            color: #F4F1E2;
            border: none;
            padding: 15px 25px;
            border-radius: 4px;
            cursor: pointer;
            font-size: 1em;
            text-transform: uppercase;
            letter-spacing: 1px;
            width: 100%;
            transition: background-color 0.3s;
        }
        input[type="submit"]:hover {
            background-color: #3b241e;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Настройки</h2>
        <div class="subtitle">планировщика свиданий</div>

        <!-- Отправка GET-запроса на сервлет -->
        <form action="planner" method="GET">
            <label>Выберите категорию досуга:</label>
            <select name="category">
                <option value="">-- Не выбрано --</option>
                <option value="movies">Фильмы</option>
                <option value="food">Еда</option>
                <option value="walks">Прогулки</option>
            </select>

            <input type="submit" value="Показать идеи">
        </form>
    </div>
</body>
</html>