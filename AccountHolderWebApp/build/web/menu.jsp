<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Menu</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f0f4f8;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
        }
        h1 {
            color: #2c3e50;
            margin-top: 40px;
        }
        ol {
            background-color: #ffffff;
            padding: 20px 30px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            font-size: 18px;
            color: #333;
        }
        li {
            margin: 15px 0;
        }
        a {
            color: #007BFF;
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <h1>Menu</h1>
    <ol>
        <li>
            Click <a href="addAccountHolder.jsp">here</a> to add Account holders
        </li>
        <li>
            Click <a href="ViewAllAccountHolder.jsp">here</a> to view all Account holders
        </li>
         <li>
            Click <a href="SearchAcHolder.jsp">here</a> to search all Account holders
        </li>
    </ol>
</body>
</html>
