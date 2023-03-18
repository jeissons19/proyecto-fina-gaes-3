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
                    <th>codproducto</th>
                    <th>nombreProducto</th>
                    <th>valorProducto</th>
                    <th>stock</th>
                    <th></th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="productos" items="${lista}">
                <tr>
                    <td><c:out value="${productos.idProductos}"/> </td> 
                    <td><c:out value="${productos.codProducto}"/> </td>
                    <td><c:out value="${productos.nombreProducto}"/> </td>
                     <td><c:out value="${productos.valorProducto}"/> </td>
                    <td><c:out value="${productos.stock}"/> </td>
                    <td>
                           <form action="ProductoServlet" method="POST">
                           ´
                           <input hidden="" name="id" value="${productos.idProductos}">
                            <input name="action" type="hidden" value="actualizar">
                            
                            <input type="submit" value="actualizar" />
                        </form>
                    </td>
                    <td>
                        <form action="ProductoServlet" method="POST">
                           ´
                           <input hidden="" name="IdProductos" value="${productos.idProductos}">
                            <input name="action" type="hidden" value="eliminar">
                            
                            <input type="submit" value="Enviar" />
                        </form>
                      
                    
                </tr> 
                    
                    
                    
                </c:forEach>

            </tbody>
        </table>
    </body>
</html>
