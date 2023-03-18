<%-- 
    Document   : tabla_usuarios
    Created on : 28/09/2022, 09:55:06 PM
    Author     : Anderson
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<!-- ================================================================================
LIBRERIAS O CONSULTAS
VALIDACION JS FORMULARIOS
Recuperado API JS: https://developer.mozilla.org/es/docs/Learn/Forms/Form_validation
Recuperado Web: https://uniwebsidad.com/libros/javascript/capitulo-7/validacion

VALIDADCION FORM
https://www.javascripttutorial.net/javascript-dom/javascript-form-validation/

INSTALAR MANUALMENTE FONTAWESOME
https://fontawesome.com/docs/web/use-with/wordpress/install-manually
================================================================================ -->
<html>

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Diseño Web II</title>
	<link rel="stylesheet" href="bootstrapusuarios.css">
	<link rel="stylesheet" type="allusuarios.css">
	<!--
		FONT AWESOME: https://cdnjs.com/libraries/font-awesome
	-->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

	<!-- ==============================================================================================
	SWEETALERT2
	CDN:	https://www.jsdelivr.com/package/npm/sweetalert2
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>	
	============================================================================================== -->
	<script src="alerta.js"></script>	
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.17/dist/sweetalert2.all.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>

	<!-- LIBRERIAS PARA EJECUTAR MODAL -->
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

	<!--cargamos remotamente -CDN JQUERY-->
	<script src="http://code.jquery.com/jquery-2.1.1.min.js"></script>
	<!-- Ahora descargamos DataTable del CDN -->
	<script type="text/javascript" src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
	<!-- ARCHIVO QUE CONTIENE LA FUNCION DE PAGINAR -->
	<Script src="paginacion.js"></Script>
</head>


<body>
	<!-- JUMBOTRON -->
	<div class="jumbotron">
		<h2 class="text-center text-white"><i class=""></i> INVENTORY SALES 3J</h2>
	</div>
	<!-- FIN JUMBOTRON -->

	<!-- NAV BAR-->
	<div>
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			<a class="navbar-brand" href="#"><i class="" style="font-size: 25px;"></i></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto">

					<li class="nav-item active">
						<a class="nav-link" href="programa_contable.jsp">Inicio <span class="sr-only">(current)</span></a>
					</li>
				</ul>

				<form class="form-inline my-2 my-lg-0">
					<input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
					<button class="btn btn-outline-warning my-2 my-sm-0" type="submit">Buscar</button>
				</form>

			</div>
		</nav>
	</div>
	<!-- FIN NAVBAR-->
	<br>

	<!-- FILA1 -->
	<div class="container">
		<div class="row">
			<div class="col-md-">
				
			</div>

			<div class="col-md-12">
				<h4 class="text-center">Tabla de Usuarios</h4>
				<table class="table" id="paginacionExample" class="display">
					<thead class="thead-dark">
						<tr>
							<th scope="col">N.</th>
							<th scope="col">Nombres</th>
							<th scope="col">Apellidos</th>
                                                        <th scope="col">Telefono</th>
							<th scope="col">E-mail</th>
							<th scope="col">Acciones</th>
						</tr>
					</thead>
					<tbody>
						
					<c:forEach items="${listaUsuarios}" var="user">
                                             <tr>
                                                <td>${user.idusers}</td>
                                                <td>${user.nomUsuario}</td>
                                                 <td>${user.apelCliente}</td>
                                                  <td>${user.telUsuario}</td>
                                                   <td>${user.mailUsuario}</td>
                                                   <td class="d-flex "><button type="submit" id="btnAlert" data-toggle="modal" data-target="#myModal" class="btn btn-outline-primary"><i class="fa-solid fa-pen-to-square"></i>&nbsp</button>
			                                             <form action="UsuarioServlet" method="POST" >
                                                                    <input type="hidden" name="id" value="${user.idusers}">
                                                                     <input type="hidden" name="action" value="actualizar">
                                                                     <button class="btn btn-danger" type="submit">  <i class="fa-regular fa-trash-can"></i>&nbsp</button>
                                                                  </form>
                                                                <form action="UsuarioServlet" method="POST" >
                                                                    <input type="hidden" name="idUsuario" value="${user.idusers}">
                                                                     <input type="hidden" name="action" value="eliminar">
                                                                     <button class="btn btn-danger" type="submit">  <i class="fa-regular fa-trash-can"></i>&nbsp</button>
                                                                  </form></td>
                                            </tr>
                                            </c:forEach>
                                           
						
					</tbody>
				</table>

			</div>
		</div>

		<!-- =================================================
			INICIO MODAL 1
		=================================================== -->
		<div class="modal fade" id="myModal">
			<div class="modal-dialog">
				<div class="modal-content">

					<!-- Modal Header -->
					<div class="modal-header bg-success">
						<h4 class="modal-title text-white">Registro Usuarios</h4>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>

					<!-- Modal body -->
					<div class="modal-body">
						<form>
							<div class="form-group">
							  <label for="formGroupExampleInput">Usuario</label>
							  <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Digite Usuario">
							</div>
							<div class="form-group">
							  <label for="formGroupExampleInput2">Contraseña</label>
							  <input type="text" class="form-control" id="formGroupExampleInput2" placeholder="Digite Contraseña" autocomplete="off">
							</div>
						</form>
					</div>

					<!-- Modal footer -->
					<div class="modal-footer">
						<button type="button" class="btn btn-success" data-dismiss="modal">Salir</button>
					</div>

				</div>
			</div>
		</div>
		<!-- ================================================
			FIN MODAL 1
		================================================= -->

	</div>
	<!-- FIN FILA1 -->


</body>

</html>
</html>
