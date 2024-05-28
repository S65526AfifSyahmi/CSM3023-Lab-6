<%-- 
    Document   : SampleInsertionRecord
    Created on : 15 May 2024, 2:24:05 pm
    Author     : Ahmad Afif Syahmi bin Ahmad Rozali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 6 | Task 1</title>
    </head>
    <body>
        <h1>Lab 6 : Task 1 - Sample insertion records into MySQL through JSP's Page</h1>
        
        <%
            int result;
            
            // Step 1: Load JDBC Driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            out.println("Step 1: MySQL Driver loaded...!");
        %>
        <br>
        <%
            // Step 2: Establish the connection
            String jdbcurl = "jdbc:mysql://localhost:3306/csm3023lab6";
            String username = "root";
            String password = "admin";
            
            Connection connection = DriverManager.getConnection(jdbcurl, username, password);
            out.println("Step 2: Database is connected...!");
        %>
        <br>
        <%
            // Step 3: Create a PreparedStatement object
            String insertQry = "INSERT INTO first_table VALUES (?)";
            PreparedStatement preparedStatement = connection.prepareStatement(insertQry);
            out.println("Step 3: PreparedStatement created...!");
        %>
        <br>
        <%
            // Step 4: Assign each value to respective columns for first_table
            String name = "Welcome to access MySQL database with JSP.";
            preparedStatement.setString(1, name);
            out.println("Step 4: Perform insertion of record...!");
            
            result = preparedStatement.executeUpdate();
        %>
        <br>
        <%
            if (result > 0) {
                out.println("Step 5: Close database connection...!");
                out.println("");
                out.println("Database connection is closed...!");
                out.print("<p>The record : (" + name + ") is succesfully created...!</p>");
            }
            // Step 5: Close database connection
            connection.close();
        %>

        <footer>
            &copy;2024 - Ahmad Afif Syahmi bin Ahmad Rozali
        </footer>
    </body>
</html>
