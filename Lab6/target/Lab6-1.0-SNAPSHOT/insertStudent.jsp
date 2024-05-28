<%-- 
    Document   : insertStudent
    Created on : 15 May 2024, 10:52:07 pm
    Author     : Ahmad Afif Syahmi bin Ahmad Rozali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 6 | Task 3</title>
    </head>
    <body>
        <h1>Lab 6 : Task 3 - Perform creating and retrieving records via JSP page</h1>

        <form action="processStudent.jsp" onsubmit="return validateInput()">
            <fieldset>
                <legend><b>Student Registration</b></legend>

                <table>
                    <tr>
                        <td><label for="studNo">Student No</label></td>
                        <td><input type="text" name="studNo" id="studNo" placeholder="E.g. S12345" required></td>
                    </tr>
                    <tr>
                        <td><label for="studName">Name</label></td>
                        <td><input type="text" name="studName" id="studName" placeholder="E.g. Ali bin Abu" required></td>
                    </tr>
                    <tr>
                        <td><label for="studProgram">Program</label></td>
                        <td>
                            <select name="studProgram" id="studProgram">
                                <option value="1">BSC (Software Engineering)</option>
                                <option value="2">BSC with Maritime Informatics</option>
                                <option value="3">BSC (Mobile Computing)</option>
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
            const studNo = document.getElementById('studNo');

            function validateInput() {
                let valid = true; // Assume validity initially

                // Student number validation
                let studentNoRegex = /^[A-Z0-9]*$/;
                if (!studentNoRegex.test(studNo.value)) {
                    alert('Invalid student number!');
                    valid = false;
                }

                // Prevent default submission if validation fails
                return valid;
            }
        </script>
    </body>
</html>
