<%-- 
    Document   : summary
    Created on : 07 Mar 2024, 11:18:04 PM
    Author     : Sifiso
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
        int icount = (Integer) session.getAttribute("icount");
        int correctGuess = (Integer) session.getAttribute("correctGuess");
        %>
    <body>
        <table border="1">
          
            <tbody>
                <tr>
                    <td>Number of times played</td>
                    <td><%=icount%></td>
                </tr>
                <tr>
                    <td>number of times a word was a  Palindrome</td>
                    <td><%=correctGuess%></td>
                </tr>
            </tbody>
        </table>
                <p>Click <a href="EndSessionServlet.do">here</a> to end session</p>

    </body>
</html>
