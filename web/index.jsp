<%-- 
    Document   : index
    Created on : Dec 1, 2024, 11:22:07 PM
    Author     : Nabil Furqoon
--%>
<%@page import="classes.JDBC"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="get" action="PrakServlet">
            Nama: <input type="text" name="nama" /> <br />
            Jurusan: <input type="text" name="jurusan" /> <br />
            Angkatan: <input type="text" name="angkatan" /> <br />
            IPK: <input type="text" name="ipk" /> <br />
            <input type="submit" value="Kirim" />
    </form>
    </body>
</html>
