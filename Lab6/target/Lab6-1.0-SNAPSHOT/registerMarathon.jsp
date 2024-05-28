<%-- 
    Document   : registerMarathon
    Created on : 16 May 2024, 12:42:29 am
    Author     : Ahmad Afif Syahmi bin Ahmad Rozali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 6 | Task 5</title>
    </head>
    <body>
        <h1>Lab 6 - Task 5</h1>
        
        <form action="processMarathon.jsp" onsubmit="return validateInput()">
            <fieldset>
                <legend>Marathon Registration</legend>
                
                <table>
                    <tr>
                        <td><label for="icNo">IC No</label></td>
                        <td><input type="text" id="icNo" name="icNo" placeholder="E.g. 010203-04-0506" required></td>
                    </tr>
                    <tr>
                        <td><label for="name">Name</label></td>
                        <td><input type="text" id="name" name="name" placeholder="E.g. Ali bin Abu" required></td>
                    </tr>
                    <tr>
                        <td>Category</td>
                        <td>
                            <select id="category" name="category">
                                <option value="5 km">5 km</option>
                                <option value="7 km">7 km</option>
                                <option value="10 km">10 km</option>
                            </select>
                        </td>
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

                // IC number validation (adjust the pattern as needed)
                let icNoRegex = /^\d{2}\d{4}-\d{2}-\d{4}$/;
                let icNo = document.getElementById('icNo').value;
                if (!icNoRegex.test(icNo)) {
                    alert('Invalid IC number format! (E.g. 010203-04-0506)');
                    valid = false;
                }

                // Name validation (allow letters, spaces, hyphens, apostrophes)
                let nameRegex = /^[A-Za-z\s\-']+$/;
                let name = document.getElementById('name').value;
                if (!nameRegex.test(name)) {
                    alert('Invalid name! (Only letters, spaces, hyphens, and apostrophes allowed)');
                    valid = false;
                }

                return valid;
            }
        </script>
    </body>
</html>
