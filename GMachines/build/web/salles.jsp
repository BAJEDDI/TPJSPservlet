<%-- 
    Document   : salles
    Created on : 27 oct. 2023, 21:11:26
    Author     : USER
--%>

<%@page import="entities.Salle"%>
<%@page import="service.SalleService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <form action="SalleController" method="">
            <fieldset>
                <legend>INFORMATIONS SALLES</legend>
                <table border="0">
                    
                        <tr>
                            <td>Code:</td>
                            <td><input type="text" name="code" value="" /></td>
                        
                 
                            <td style="text-align: center;">
                                <input type="submit" value="Ajouter" />&nbsp;<input type="reset" value="ANNULER" />
                            </td>
                        </tr>
                        
                </table>

            </fieldset>
        <fieldset>
            <legend>Liste des salles</legend>
            <table border="0">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>CODE</th>
                        <th>Supprimer</th>
                        <th>Modifier</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        SalleService ss = new SalleService();
                        for(Salle s : ss.findAll()) {
                    %>
                    <tr>
                        <td><%= s.getId() %></td>
                        <td><%= s.getCode() %></td>
                        <td><a href="SalleController?op=delete&id=<%=s.getId()%>">Supprimer</a></td>
                        <td><a href="SalleController?op=update&id=<%=s.getId()%>">Modifier</a></td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
        </fieldset>
    </form>
    </body>
</html>
