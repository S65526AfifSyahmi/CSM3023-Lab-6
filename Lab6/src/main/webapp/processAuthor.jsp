<%-- 
    Document   : processAuthor
    Created on : 15 May 2024, 3:31:39 pm
    Author     : Ahmad Afif Syahmi bin Ahmad Rozali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 6 | Task 2</title>
    </head>
    <body>
        <h1>Lab 6 : Task 2 - Perform creating and retrieving records via JSP page</h1>
        
        <jsp:useBean id="author" class="lab6.javabeans.Author" scope="request" >
            <jsp:setProperty name="author" property="*" />
        </jsp:useBean>
        
        <%
            int result;
            
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            String jdbcurl = "jdbc:mysql://localhost:3306/csm3023lab6";
            String username = "root";
            String password = "admin";
            
            Connection connection = DriverManager.getConnection(jdbcurl, username, password);
            
            String insertQuery = "INSERT INTO author VALUES (?, ?, ?, ?, ?, ?)";
            
            PreparedStatement preparedStatement = connection.prepareStatement(insertQuery);
            
            preparedStatement.setString(1, author.getAuthorNo());
            preparedStatement.setString(2, author.getName());
            preparedStatement.setString(3, author.getAddress());
            preparedStatement.setString(4, author.getCity());
            preparedStatement.setString(5, author.getState());
            preparedStatement.setString(6, author.getZip());
            
            result = preparedStatement.executeUpdate();
            
            if (result > 0) {
                out.println("\tRecord successfully added into Author table...!");
                out.print("<p>Record with author no " + author.getAuthorNo() + " successfully created..!</p>");
                out.print("<p>Details of the record are:</p>");
                out.print("<p>Name: " + author.getName() + "</p>");
                out.print("<p>Address: " + author.getAddress() + "</p>");
                out.print("<p>City: " + author.getCity() + "</p>");
                out.print("<p>State: " + author.getState() + "</p>");
                out.print("<p>Zip: " + author.getZip() + "</p>");
            }
            
            connection.close();
        %>
        
        <footer>
            &copy;2024 - Ahmad Afif Syahmi bin Ahmad Rozali
        </footer>
    </body>
</html>
