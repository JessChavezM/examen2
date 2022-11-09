<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Producto"%>
<%
    ArrayList<Producto> lista =(ArrayList<Producto>)session.getAttribute("listaper");
    
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
                <p>SEGUNDO PARCIAL TEM-742</p>
                <p>Nombre: Jesus Omar Chavez Maydana</p>
                <p>Carnet: 9253032</p>
            <h1>Productos</h1>
            <a href="MainController?op=nuevo">Nuevo</a>
            <table border="1">
                <tr>
                    <th>Id</th>
                    <th>Descripcion</th>
                    <th>Cantidad</th>
                    <th>Precio</th>
                    <th>Categoria</th>
                    <th></th>
                    <th></th>
                </tr>
            
                <%
                    if(lista!=null){
                    for(Producto item : lista){
                   
                %>
                <tr>
                    <td><%= item.getId() %></td>
                    <td><%= item.getDescripcion() %></td>
                    <td><%= item.getCantidad() %></td>
                    <td><%= item.getPrecio() %></td>
                    <td><%= item.getCategoria() %></td>
                    <td><a href="MainController?op=editar&id=<%= item.getId() %>">Editar</td>
                    <td><a href="MainController?op=eliminar&id=<%= item.getId() %>"
                           onclick="return confirm('Estas seguro de eliminar ?')">Eliminar</td>
                </tr>
                <%
                    } } 
                %>
                 </table>          
    </body>
</html>







