<%-- 
    Document   : daftarmahasiswa
    Created on : Dec 2, 2024, 12:08:27 AM
    Author     : Nabil Furqoon
--%>
<%@page import="classes.JDBC, java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1">
        <tr>
            <td>ID</td>
            <td>Nama</td>
            <td>Jurusan</td>
            <td>IPK</td>
        </tr>
        
    <%
        JDBC db = new JDBC();
        if (db.isConnected) {
            ResultSet rs = db.getData("select * from mahasiswa");
            while (rs.next()) {
                out.print("<tr>");
                out.print("<td>" + rs.getInt("id") + "</td>");
                out.print("<td>" +rs.getString("nama")+ "</td>");
                out.print("<td>" +rs.getString("jurusan")+ "</td>");
                out.print("<td>" +rs.getFloat("ipk")+ "</td>");
                out.print("</tr>");
            }
            
            db.disconnect();
        } else {
            out.print(db.message+"<br />");
        }
 %>
</table>
    </body>
</html>
