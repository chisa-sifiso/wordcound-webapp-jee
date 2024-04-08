<%-- 
    Document   : startgame
    Created on : 07 Mar 2024, 10:18:42 PM
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
        String name= (String) session.getAttribute("name");
        
        
        %>
    <body>
        <p>Hello <%=name%> let's type a word you want to verify
        
        </p>
        <form action="comparewordSavlet.do" method="POST">
       
        <table border="0">
            <tbody>
                <tr>
                    <td>word:</td>
                    <td><input type="text" name="word" value="" required/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="submit" /></td>
                </tr>
            </tbody>
        </table>
         </form>
    </body>
</html>
