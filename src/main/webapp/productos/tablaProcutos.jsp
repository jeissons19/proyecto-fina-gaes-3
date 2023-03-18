<%-- 
    Document   : index
    Created on : 26/10/2022, 09:54:29 PM
    Author     : Johathan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
   <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inventario</title>
    </head>
    <body>
        <h1>productos</h1>
        <a href="nuevo.jsp">Nuevo registro</a>
        <br/><br/>
        <table border="1" width="80%">
            <thead>
                <tr>
                    <<th>idProductos</th>
                    <th>codproducto</th>
                    <th>nombreProducto</th>
                    <th>valorProducto</th>
                    <th>stock</th>
                    <th></th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="productos" items="$(lista)">
                <tr>
                    <td><c:out value="$(productos.id)"/> </td>
                    <td><c:out value="$(productos.codigo)"/> </td> 
                    <td><c:out value="$(productos.nombre)"/> </td>
                    <td><c:out value="$(productos.precio)"/> </td>
                    <td><c:out value="$(productos.existencia)"/> </td>
                    <td><a href="modificar.jsp?accion=modificar&id=<c:out value="$(productos.id)"/>">modificar </a></td>
                    <td><a href="ProductosServlet?accion=eliminar&id=<c:out value="$(productos.id)"/>">eliminar </a></td>
                    
                    
                </tr> 
                    
                    
                    
                </c:forEach>

            </tbody>
        </table>
    </body>
</html>
