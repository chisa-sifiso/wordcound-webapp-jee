<%-- 
    Document   : out
    Created on : 07 Mar 2024, 10:52:15 PM
    Author     : Sifiso
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>OutCome</title>
    </head>
    <%
        String word =(String) request.getAttribute("word");
        String outcome = (String) request.getAttribute("outcome");
          
        %>
    
    
    <body>
        <table border="0">
           
            <tbody>
                <tr>
                    <td>Entered word</td>
                    <td><%=word%></td>
                </tr>
                <tr>
                    <td>Is the word a  Palindrome</td>
                    <td><%=outcome%></td>
                </tr>
            </tbody>
            
        </table><br>
           <p>Click <a href="SummaryServlet.do">here</a> to get summary</p><br>
           <p>Click <a href="nameSarvlet.do">here</a> to play again</p><br>
        
    </body>
</html>
