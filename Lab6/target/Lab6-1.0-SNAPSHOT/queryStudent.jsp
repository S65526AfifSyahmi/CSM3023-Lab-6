<%-- 
    Document   : queryStudent
    Created on : 16 May 2024, 12:00:29 am
    Author     : Ahmad Afif Syahmi bin Ahmad Rozali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            table {
                border-collapse: collapse;
            }
            
            td, th {
                border: 1px solid black;
                padding: 0.5rem;
            }
            
            th {
                background: gold;
            }
        </style>
        <title>Lab 6 | Task 4</title>
    </head>
    <body>
        <h1>Lab 6 - Task 4</h1>
        
        <table>
            <thead>
                <tr>
                    <th>ISBNNo</th>
                    <th>Author</th>
                    <th>Title</th>
                </tr>
            </thead>
            <tbody>
        
        <%
            // Step 1: Load JDBC Driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            // Step 2: Establish the connection
            String jdbcurl = "jdbc:mysql://localhost:3306/csm3023lab6";
            String username = "root";
            String password = "admin";
            
            Connection connection = DriverManager.getConnection(jdbcurl, username, password);
            
            // Step 3: Create a statement object
            Statement statement = connection.createStatement();
            
            // Step 4: Perform retrieve record from Student table
            String select_all_student = "SELECT * FROM student";
            ResultSet resultset = statement.executeQuery(select_all_student);
            
            while (resultset.next()) {
        %>
                <tr>
                    <td><%= resultset.getString(1) %></td>
                    <td><%= resultset.getString(2) %></td>
                    <td><%= resultset.getString(3) %></td>
                </tr>
        <%
            }
        %>
        
            </tbody>
        </table>
    </body>
</html>
