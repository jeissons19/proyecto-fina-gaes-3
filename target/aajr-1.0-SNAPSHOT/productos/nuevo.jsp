<%-- 
    Document   : nuevo
    Created on : 26/10/2022, 09:55:40 PM
    Author     : Johathan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inventario</title>
    </head>
    <body>
        <h2>nuevo registro</h2>
      
<form action="productos/UsuarioServlet" method="post" >

    <p>
        codProducto:
        <input id="codProducto" name="codProducto" type="text"/>
    </p>    
     <p>
        nombreProducto:
        <input id="nombreProducto" name="nombreProducto" type="text"/>
    </p>    
     <p>
        valorProducto:
        <input id="valorProducto" name="valorProducto" type="text"/>
         </p>
         <p>
        stock:
        <input id="stock" name="stock" type="text"/>
    </p> 
    <input type="hidden" name="action" value="Guardar"/>
    <button id="guardar" type="submit" class="btn btn-outline-success">Guardar</button>
</form>
        <<h1>
            ${messge}
        </h1>
    </body>
</html>
