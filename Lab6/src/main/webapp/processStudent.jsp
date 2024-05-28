<%-- 
    Document   : processStudent
    Created on : 15 May 2024, 10:16:32 pm
    Author     : Ahmad Afif Syahmi bin Ahmad Rozali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page errorPage="errorStudent.jsp" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 6 | Task 3</title>
    </head>
    <body>
        <h1>Lab 6 : Task 3 - Perform creating and retrieving records via JSP page</h1>
        
        <!-- Create an object for Student -->
        <jsp:useBean id="student" class="lab6.javabeans.Student" scope="request">
            <jsp:setProperty name="student" property="*" />
        </jsp:useBean>
        
        <%
            int result;
            
            Class.forName("com.mysql.cj.jdbc.Driver");
            System.out.println("Step 1: MySQL driver loaded...!");
            
            String jdbcurl = "jdbc:mysql://localhost:3306/csm3023lab6";
            String username = "root";
            String password = "admin";
            
            Connection connection = DriverManager.getConnection(jdbcurl, username, password);
            System.out.println("Step 2: Database is connected...!");
            
            String insertQuery = "INSERT INTO student VALUES (?, ?, ?)";
            PreparedStatement preparedStatement = connection.prepareStatement(insertQuery);
            System.out.println("Step 3: PreparedStatement is created...!");
            
            System.out.println("Step 4: Perform insertion of records...!");
            preparedStatement.setString(1, student.getStudNo());
            preparedStatement.setString(2, student.getStudName());
            preparedStatement.setString(3, student.getProgramAsString());
            
            result = preparedStatement.executeUpdate();
            if (result > 0) {
                System.out.println("\tRecord succesfully added into student's table...!");
        %>
                <p>Record with student no <jsp:getProperty name="student" property="studNo" /> successfully created...!</p>
                <p>Details of the record are:</p>
                <p>Student ID: <jsp:getProperty name="student" property="studNo" /></p>
                <p>Name: <jsp:getProperty name="student" property="studName" /></p>
                <p>Program: <%= student.getProgramAsString() %></p>
        <%
            }
            
            System.out.println("Step 5: Close the database connection...!");
            connection.close();
            System.out.println("Database connection is closed...!");
        %>
    </body>
</html>
