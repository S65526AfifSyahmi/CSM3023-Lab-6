<%-- 
    Document   : login
    Created on : 16 May 2024, 7:11:16 am
    Author     : Ahmad Afif Syahmi bin Ahmad Rozali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 6 | Exercise</title>
    </head>
    <body>
        <h1>Lab 6 - Exercise</h1>
        
        <%
            String errorMessage = (String) session.getAttribute("errorMessage");
            if (errorMessage != null) {
                session.removeAttribute("errorMessage"); // Remove message after display
        %>
                <p style="color: red;"><%= errorMessage %></p>
        <%
            }
        %>
        
        <form action="doLogin.jsp" onsubmit="return validateInput()">
            <fieldset>
                <legend>User Log In</legend>
                
                <table>
                    <tr>
                        <td><label for="username">Username</label></td>
                        <td><input type="text" id="username" name="username" placeholder="Enter username" required=""></td>
                    </tr>
                    <tr>
                        <td><label for="password">Password</label></td>
                        <td><input type="password" id="password" name="password" placeholder="Enter password" required=""></td>
                    </tr>
                    <tr>
                        <td>
                            <br>
                            <button type="reset">Cancel</button>
                            <button type="submit">Submit</button>
                        </td>
                    </tr>
                </table>
            </fieldset>
        </form>
        
        <script>
            function validateInput() {
                let valid = true; // Assume validity initially

                // Username validation
                let username = document.getElementById('username').value;
                if (username.length > 15) {
                    alert('Username cannot exceed 15 characters!');
                    valid = false;
                }

                // Password validation
                let password = document.getElementById('password').value;
                if (password.length > 10) {
                    alert('Password cannot exceed 10 characters!');
                    valid = false;
                }

                return valid;
            }
        </script>
    </body>
</html>
