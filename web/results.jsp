<%-- 
    Document   : results
    Created on : Oct 1, 2016, 12:08:53 AM
    Author     : Wenchuan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary</title>
    </head>
    
    <%
        double hourW=Double.parseDouble(request.getParameter("hourW"));
        double hourP=Double.parseDouble(request.getParameter("hourP"));
        double preTax=Double.parseDouble(request.getParameter("preTax"));
        double afterTax=Double.parseDouble(request.getParameter("afterTax"));
        %>
        
    <body>
        <h3>Salary Info</h3>
        <hr>
        <table border="1">
            <tr>
                   <td>Hours Worked: </td>
                   <td><%= hourW %></td>
            </tr>
        </table>
    </body>
</html>
