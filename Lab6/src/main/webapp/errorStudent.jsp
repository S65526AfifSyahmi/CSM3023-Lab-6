<%-- 
    Document   : errorStudent
    Created on : 15 May 2024, 10:41:51 pm
    Author     : Ahmad Afif Syahmi bin Ahmad Rozali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 6 | Task 3</title>
    </head>
    <body>
        <h1>Lab 6 : Task 3 - Perform creating and retrieving records via JSP page</h1>
        
        <form id="errorForm" action="insertStudent.jsp" method="post">
            <p>There is error occurred when inserting record...!</p>
            <p><jsp:expression> exception.getMessage() </jsp:expression></p>
            <button type="submit">Back</button>
        </form>
    </body>
</html>