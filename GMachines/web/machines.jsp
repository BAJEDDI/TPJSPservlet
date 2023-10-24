<%-- 
    Document   : machines
    Created on : 24 oct. 2023, 20:31:30
    Author     : USER
--%>

<%@page import="entities.Machine"%>
<%@page import="service.MachineService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        
    </head>
    <body>
        <form action="MachineController" method="GET"></form>
  
            <fieldset>
                <legend>INFORMATIONS MACHINES</legend>
                <table border="0">
                    
                        <tr>
                            <td>Référence:</td>
                            <td><input type="text" name="ref" value="" /></td>
                        </tr>
                        <tr>
                            <td>Marque:</td>
                            <td><input type="text" name="marque" value="" /></td>
                        </tr>
                        <tr>
                            <td>Prix:</td>
                            <td><input type="text" name="prix" value="" /></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="submit" value="Ajouter" /><input type="reset" value="ANNULER" /></td>
                        </tr>
                    </tbody>
                </table>

            </fieldset>
        <fieldset>
            <legend>Liste des Machines</legend>
            <table border="0">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>REF</th>
                        <th>MARQUE</th>
                        <th>PRIX</th>
                        <th>Modifier</th>
                        <th>Supprimer</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        MachineService ms = new MachineService();
                        for(Machine m : ms.findAll()) {
                    %>
                    <tr>
                        <td><%= m.getId() %></td>
                        <td><%= m.getRef() %></td>
                        <td><%= m.getMarque() %></td>
                        <td><%= m.getPrix() %></td>
                        <td><a href="MachineController?op=delete&id=<%=m.getId()%>">Supprimer</a></td>
                        <td><a href="MachineController?op=update&id=<%=m.getId()%>">Modifier</a></td>
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
        </form>
    </body>
</html>
