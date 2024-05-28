<%-- 
    Document   : main
    Created on : 16 May 2024, 7:11:39 am
    Author     : Ahmad Afif Syahmi bin Ahmad Rozali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="lab6.javabeans.User" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 6 | Exercise</title>
    </head>
    <body>
        <%
            // Retrieve user object from session
            User user = (User) session.getAttribute("user");

            if (user != null) {
        %>
            <h1>Welcome <%= user.getUsername() %> to the Main Page!</h1>
            <p>Your details:</p>
            <p>Username: <%= user.getUsername() %></p>
            <p>First name: <%= user.getFirstname() %></p>
            <p>Last name: <%= user.getLastname() %></p>
            <button onclick="logOut()">Log Out</button>
        <%
            } 
            else {
                out.println("<p>You are not logged in! Please log in first.</p>");
                response.sendRedirect("login.jsp"); // Redirect if not logged in
            }
        %>
        
        <script>
            function logOut() {
                window.location.href='login.jsp';
            }
        </script>
    </body>
</html>