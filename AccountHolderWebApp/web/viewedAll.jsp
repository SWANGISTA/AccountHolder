<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entity.AccountHolder"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Account Holders</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f4;
                padding: 40px;
                margin: 0;
                display: flex;
                flex-direction: column;
                align-items: center;
            }

            h1 {
                color: #333;
                margin-bottom: 20px;
            }

            table {
                width: 90%;
                border-collapse: collapse;
                background-color: #fff;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                border-radius: 10px;
                overflow: hidden;
            }

            th, td {
                padding: 12px 15px;
                text-align: left;
                border-bottom: 1px solid #ddd;
            }

            th {
                background-color: #4CAF50;
                color: white;
            }

            tr:hover {
                background-color: #f1f1f1;
            }

            tr:last-child td {
                border-bottom: none;
            }
        </style>
    </head>
    <body>
        <h1>All Account Holders</h1>
        <%
            List<AccountHolder> acs = (List<AccountHolder>) request.getAttribute("acs");
        %>
        <table>
            <tr>
                <th>Account Number</th>
                <th>Name</th>
                <th>Cell No</th>
                <th>Email</th>
                <th>Town</th>
                <th>Village</th>
                <th>Code</th>
                <th>Balance</th>
            </tr>
            <%
                for (AccountHolder ac : acs) {
            %>
            <tr>
                <td><%= ac.getId() %></td>
                <td><%= ac.getFullName() %></td>
                <td><%= ac.getCellNo() %></td>
                <td><%= ac.getEmail() %></td>
                <td><%= ac.getTown() %></td>
                <td><%= ac.getVillage() %></td>
                <td><%= ac.getCode() %></td>
                <td><%= ac.getBalance() %></td>
            </tr>
            <%
                }
            %>
        </table>
    </body>
</html>
