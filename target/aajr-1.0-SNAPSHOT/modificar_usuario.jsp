<%-- 
    Document   : modificar
    Created on : 30/10/2022, 11:22:28 PM
    Author     : Johathan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons"rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
       
    </head>
    <body>
        <div class="container-xl">
            <div class="table-responsive">
                <div class="table-wrapper">
                    <div class="table-title">
                        <div class="row">
                            <div class="col-sm-6">
                                <h2><b>Modificar usuario </b></h2>
                            </div>
                            
                        </div>
                    </div>
                    <table class="table table-striped table-hover">
                        <thead>
                            <tr>
                                <th>IdProductos</th>
                                <th>codProductos</th>
                                <th>nombreProductos</th>
                                <th>valorProductos</th>
                                <th>stock</th>
                                
                            </tr>
                        </thead>
                        <tbody>
                           
                                
                           <form action="ProductoServlet" method="POST">
                                                       
                               <input type="hidden" name="userIdProductos" >
                                                            <input type="hidden" name="action" value="Guardar">
                                                        <div class="modal-header">						
                                                            <h4 class="modal-title">Editar </h4>
                                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <div class="form-group">
                                                                <label>codProducto</label>
                                                                <input type="text" value="${usuarioData.nomUsuario}" name="nomUsuario" class="form-control" required>
                                                            </div>
                                                            <div class="form-group">
                                                                <label>nombreProducto</label>
                                                                <input type="text" value="${usuarioData.nomUsuario}" name="nombreProducto" class="form-control" required>
                                                            </div>
                                                            <div class="form-group">
                                                                <label>valorProducto</label>
                                                                <input type="text" value="${usuarioData.nomUsuario}" name="valorProducto" class="form-control" required>
                                                            </div>
                                                            <div class="form-group">
                                                                <label>stock</label>
                                                                <input type="text" value="${usuarioData.nomUsuario}" name="stock" class="form-control" required>
                                                            </div>
                                                            
                                                        </div>
                                                        <div class="modal-footer">
                                                            <input type="button" class="btn btn-danger" data-dismiss="modal" value="Cancelar">
                                                            <input type="submit" class="btn btn-success" name="action" value="Guardar">
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                              
                      
                        </tbody>
                    </table>
                

        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    </body>
</html>
