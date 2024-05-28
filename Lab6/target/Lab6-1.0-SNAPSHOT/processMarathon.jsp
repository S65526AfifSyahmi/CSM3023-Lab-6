<%-- 
    Document   : processMarathon
    Created on : 16 May 2024, 1:06:39 am
    Author     : Ahmad Afif Syahmi bin Ahmad Rozali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="lab6.javabeans.Marathon" %>
<%@page import="lab6.dao.Database" %>
<%@page import="lab6.dao.MarathonDAO" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 6 | Task 5</title>
    </head>
    <body>
        <h1>Lab 6 - Task 5</h1>
        
        <!-- Create object Marathon -->
        <jsp:useBean id="marathon" class="lab6.javabeans.Marathon" scope="request">
            <jsp:setProperty name="marathon" property="*" />
        </jsp:useBean>
        
        <%
            int result;
            
            // Step 1: Create Database object
            Database database = new Database();
            MarathonDAO marathonDAO = new MarathonDAO();
            
            // Step 2: Add the records
            result = marathonDAO.addDetails(marathon);
            
            // Step 3: Determine whether the transaction is success
            if (result > 0) {
                System.out.println("Record successfully added into marathon table...!");
        %>
                <p>Record with IC No <%= marathon.getIcNo() %> successfully created...!</p>
                <p>Details of the record are:</p>
                <p>IC No: <%= marathon.getIcNo() %></p>
                <p>Name: <%= marathon.getName() %></p>
                <p>Category: <%= marathon.getCategory() %></p>
        <%
            }

            // Step 4: Close database connection
            database.closeConnection();
        %>
    </body>
</html>
