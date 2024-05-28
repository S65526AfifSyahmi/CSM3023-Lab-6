<%-- 
    Document   : insertAuthor
    Created on : 15 May 2024, 3:13:16 pm
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
        
        <form action="processAuthor.jsp">
            <fieldset>
                <legend><b>Author Registration</b></legend>
                <table>
                    <tr>
                        <td><label for="authorNo">Author No</label></td>
                        <td><input type="text" name="authorNo" id="authorNo" placeholder="E.g. UKXXXXX"></td>
                    </tr>
                    <tr>
                        <td><label for="name">Name</label></td>
                        <td><input type="text" name="name" id="name" placeholder="Enter your name"></td>
                    </tr>
                    <tr>
                        <td><label for="address">Address</label></td>
                        <td><input type="text" name="address" id="address" placeholder="Enter your address"></td>
                    </tr>
                    <tr>
                        <td><label for="city">City</label></td>
                        <td><input type="text" name="city" id="city" placeholder="Enter your city"></td>
                    </tr>
                    <tr>
                        <td><label for="state">State</label></td>
                        <td><input type="text" name="state" id="state" placeholder="Enter your state"></td>
                    </tr>
                    <tr>
                        <td><label for="zip">Zip</label></td>
                        <td><input type="text" name="zip" id="zip" placeholder="Enter your zip"></td>
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
        <br>
        <footer>
            &copy;2024 - Ahmad Afif Syahmi bin Ahmad Rozali
        </footer>
    </body>
</html>
