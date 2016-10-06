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
         <link rel="stylesheet" type="text/css" href="./css/format2.css"/>
    </head>
    
    <%
        double hourW=Double.parseDouble(request.getParameter("hourW"));
       
        double hRate=Double.parseDouble(request.getParameter("hourP"));
       
        //double grossPay=
        
       
        
        double grossPay;
        double otHour=0;
        double otRate=0;
        if (hourW>40){
             
             otHour=hourW-40;
             otRate=hRate*1.5;
            grossPay=hRate*40+otHour*otRate;
            
        }
        else{
            grossPay=hRate*hourW;
            
        }
        double preTaxD=Double.parseDouble(request.getParameter("preTax"));
        double preTaxPay=grossPay-preTaxD;
        double taxAmount;
        if (grossPay<500){
            
             taxAmount=preTaxPay*0.18;
            
        }   
        else{
             taxAmount=preTaxPay*0.22;
        }
        
        double postTaxPay=preTaxPay-taxAmount;
        double afterTaxD=Double.parseDouble(request.getParameter("afterTax"));
        double netPay=postTaxPay-afterTaxD;

        


        %>
        
    <body>
        <h3>Salary Info</h3>
        <hr>
        <table >
            <tr>
                   <td>Total Hours Worked: </td>
                   <td class="dt"><%=hourW %></td>
            </tr>
            
             <tr>
                   <td>Hourly Rate: </td>
                   <td class="dt"><%= hRate %></td>
            </tr>
            <tr>
                   <td># Hours Overtime: </td>
                   <td class="dt"><% 
                       if(hourW > 40){
                           out.println(otHour);
                           
                       }
                       else{
                           out.println("N/A");
                       }
                   
                       
                       %></td>               
            </tr>
            
               <tr>
                   <td>Overtime Hourly Rate: </td>
                   <td class="dt"><% 
                       if(hourW > 40){
                           out.println(otRate);
                           
                       }
                       else{
                           out.println("N/A");
                       }
                   
                       
                       %></td>            
               </tr>
                  <tr>
                   <td>Gross Pay: </td>
                   <td class="dt"><%=  grossPay    %></td>
                  </tr>
                  
                  <tr>
                   <td>Pre-tax Deduct: </td>
                   <td class="dt"><%=  preTaxD    %></td>
                  </tr>
                   
                  <tr>
                   <td>Pre-tax Pay: </td>
                   <td class="dt"><%=  preTaxPay    %></td>
                  </tr>
                  
                  <tr>
                   <td>Tax Amount: </td>
                   <td class="dt"><%=  taxAmount    %></td>
                  </tr>
            
                   <tr>
                   <td>Post-tax Pay: </td>
                   <td class="dt"><%=  postTaxPay    %></td>
                  </tr>
                  
                   <tr>
                   <td>Net Pay: </td>
                   <td class="dt"><%=  netPay    %></td>
                  </tr>
            
        </table>
    </body>
</html>
