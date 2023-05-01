<%-- 
    Document   : test
    Created on : 31 mars 2022, 22:51:35
    Author     : 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Connpackage.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.*"%>
<%@page import="packageadmin.*"%>
<!DOCTYPE html>
<%
    Connection con = ConnClothina.getConnn();
    ResultSet R;
    R = con.createStatement().executeQuery("select ImageProduit, ImageVedet from Produit");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%while(R.next()){%>
        <img src="../image/<%=R.getString(1)%>">
        <img src="../image/<%=R.getString(2)%>">
        <%}%>
    </body>
</html>
