<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Add Account Holder</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        h1 {
            text-align: center;
            color: #333;
        }
        form {
            width: 50%;
            margin: 20px auto;
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        table {
            width: 100%;
        }
        td {
            padding: 10px;
        }
        input[type="text"] {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h1>Add Account Holder</h1>
    <form action="addACholder.do" method="POST">
        <table>
            <tr>
                <td>Name:</td>
                <td><input type="text" name="name" required /></td>
            </tr>
            <tr>
                <td>Cell No:</td>
                <td><input type="text" name="cellNo" required /></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><input type="text" name="email" required /></td>
            </tr>
            <tr>
                <td>Balance: R</td>
                <td><input type="text" name="balance" required /></td>
            </tr>
            <tr>
                <td>Town:</td>
                <td><input type="text" name="town" required /></td>
            </tr>
            <tr>
                <td>Village:</td>
                <td><input type="text" name="village" required /></td>
            </tr>
            <tr>
                <td>Code:</td>
                <td><input type="text" name="code" required /></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" name="ADD" value="Add" /></td>
            </tr>
        </table>
    </form>
</body>
</html>
