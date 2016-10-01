<%-- 
    Document   : index
    Created on : Oct 1, 2016, 12:06:23 AM
    Author     : Wenchuan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculator</title>
        <link rel="stylesheet" type="text/css" href="./css/format.css"/>
    </head>
    <body>
        <h3>Simple Salary Calculator</h3>
        <hr>
        
        <form name="demoForm" action="results.jsp" method="post">
            
            <table>
                <tr>
                    <td>Hours Worked: </td>
                    <td><input type="number" step="any" name="hourW" value="" size="50" required></td>
                </tr>
                <tr>
                    <td>Hourly Pay: </td>
                    <td><input type="text" name="hourP" value="" size="50" required></td>
                </tr>
                <tr>
                    <td>Pre-tax Deduct: </td>
                    <td><input type="text" name="preTax" value="" size="50" required></td>
                </tr>
                <tr>
                    <td>After-tax Deduct: </td>
                    <td><input type="text" name="afterTax" value="" size="50" required></td>
                </tr>
                
            </table> 
            
            <input type ="reset" value="Clear" id="clear" >
            <input type ="submit" value="Submit" id="submit" >
        </form>
    </body>
</html>
