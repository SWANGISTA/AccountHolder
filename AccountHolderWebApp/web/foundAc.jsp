<%-- 
    Document   : foundAc
    Created on : May 13, 2025, 3:32:24 AM
    Author     : USER
--%>

<%@page import="za.ac.tut.entity.AccountHolder"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #eef2f3;
            margin: 0;
            padding: 0;
        }
        h1 {
            text-align: center;
            color: #2c3e50;
            margin-top: 30px;
        }
        table {
            margin: 30px auto;
            width: 60%;
            background-color: #fff;
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        td {
            padding: 10px;
            font-size: 16px;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        a {
            color: #3498db;
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
        p {
            text-align: center;
            margin-top: 20px;
            font-size: 16px;
        }
    </style>
</head>
<body>
    <h1>Account Holder Found Successfully</h1>
    <%
        AccountHolder ach = (AccountHolder) request.getAttribute("ac");
    %>
    <table>
        <tr>
            <td><strong>Name:</strong></td>
            <td><%= ach.getFullName() %></td>
        </tr>
        <tr>
            <td><strong>Account Number:</strong></td>
            <td><%= ach.getId() %></td>
        </tr>
        <tr>
            <td><strong>Cell No:</strong></td>
            <td><%= ach.getCellNo() %></td>
        </tr>
        <tr>
            <td><strong>Email:</strong></td>
            <td><%= ach.getEmail() %></td>
        </tr>
        <tr>
            <td><strong>Town:</strong></td>
            <td><%= ach.getTown() %></td>
        </tr>
        <tr>
            <td><strong>Village:</strong></td>
            <td><%= ach.getVillage() %></td>
        </tr>
        <tr>
            <td><strong>Balance:</strong></td>
            <td>R <%= ach.getBalance() %></td>
        </tr>
    </table>
    <p>
        Click <a href="menu.jsp">here</a> to return to the dashboard.
    </p>
</body>
</html>
