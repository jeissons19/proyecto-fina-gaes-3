<%-- 
    Document   : ingresar
    Created on : 27/09/2022, 08:29:25 PM
    Author     : Anderson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>ADSI Diseño Web</title>
	<link rel="stylesheet" href="bootstrap.css">
	<script type="text/javascript" src="bootstrap.js"></script>
	<link rel="stylesheet" type="text/css" href="css_registrar.css">
             

	<!-- ==============================================================================================
	SWEETALERT2
	CDN:	https://www.jsdelivr.com/package/npm/sweetalert2
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>	
	============================================================================================== -->
	<script src="alerta.js"></script>
	<script src="validarFormulario.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.17/dist/sweetalert2.all.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>

</head>
<body>
	<!-- JUMBOTRON -->
	<div class="jumbotron">
		<h3 class="text-center text-white"> <img class="jl" src="/img/3j.png"> INVENTORY SALES 3J</h3>
	</div>
	<!-- NAVBAR -->
	<div>
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		  <a class="navbar-brand" href="#"><i class="" style="font-size: 25px;"></i></a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>

		  <div class="collapse navbar-collapse" id="navbarSupportedContent">
		    <ul class="navbar-nav mr-auto">
		      <li class="nav-item active">
		        <a class="nav-link" href="Login.jsp">Inicio <span class="sr-only">(current)</span></a>
		      </li>   
		    </ul>

		    <form class="form-inline my-2 my-lg-0">
		      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
		      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Buscar</button>
		    </form>
		  </div>
		</nav>
	</div>
	<br>
	
	<div class="container"><!-- INICIO CONTAINER -->
		<div class="row"><!-- INICIO FILA -->
			<div class="col-md-4">
				<img src="img/3j.png" class="img-fluid"  width="720" height="420">
			</div>

			<div class="col-md-8">
				<div class="card">
					<div class="card-header bg-warning">
						<h4 class="text-center text-white"><i class='fas fa-user-check'></i> Registrarse</h4>
					</div>
					<div class="card-body"><!-- INICIO CARD-BODY-->
						<form class="" action="UsuarioServlet" method="POST" id="form1" name="form1">
							
							<div class="form-row"><!-- INICIO FILA CARD-BODY -->
								
								<div class="col-sm-6"><!--COLUMNA1.1-->
									<label>Nombres</label>
									<div class="input-group">
										<div class="input-group-prepend">
											<div class="input-group-text"><i class="fa-solid fa-circle-user"></i></div>
										</div>
										<input name="nomUsuario" id="nombre" nombretype="text" class="form-control" placeholder="Nombres" required>
										<div class="valid-feedback">Exito.</div>
										<div class="invalid-feedback">Fallo.</div>	
									</div>
								</div><!--FIN COLUMNA1.1-->	
							</div><!-- FIN FILA CARD-BODY -->

							
							<div class="form-row"><!-- INICIO FILA2 CARD-BODY -->
								<div class="col-sm-6"><!-- COLUMNA 1.2-->
									<label>Apellidos</label>
									<div class="input-group">
										<div class="input-group-prepend">
											<div class="input-group-text"><i class="fa-solid fa-users"></i></div>
										</div>
										<input name="apelCliente" id="apellido" type="text" class="form-control" placeholder="Apellidos" required>
										<div class="valid-feedback">Exito.</div>
										<div class="invalid-feedback">Fallo.</div>
									</div>
								</div><!--FIN COLUMNA 1-->	

								<div class="col-sm-6"><!--COLUMNA1.2-->
									<label>Numero de documento</label>
									<div class="input-group">
										<div class="input-group-prepend">
											<div class="input-group-text"><i class="fa-solid fa-calendar-days"></i></div>
										</div>
										<input name="nomDocumentoUsuario" id="nodocumento" type="number" class="form-control" placeholder="nodocumento" required>
										<div class="valid-feedback">Exito.</div>
										<div class="invalid-feedback">Fallo.</div>
									</div>
								</div><!--FIN COLUMNA1.2-->	
							</div><!-- FIN FILA2 CARD-BODY -->

							<div class="form-row"><!-- INICIO FILA3 CARD-BODY -->
								<div class="col-sm-6"><!--COLUMNA1.3-->
									<label>tipo de documento</label>
									<div class="input-group">
										<div class="input-group-prepend">
											<div class="input-group-text"><i class="fa-solid fa-venus-mars"></i></div>
										</div>
									      <select name="tipoDocumentoUsuario" id="tipodocumento" class="custom-select" required>
									        <option selected disabled value="">Selecionar.</option>
									        <option value="C.C">Cedula ciudadania</option>
									        <option value="C.E">Cedula exptranjera</option>
									      </select>
									      <div class="valid-feedback">Exito.</div>
									      <div class="invalid-feedback">Fallo.</div>				
									</div>
								</div><!--FIN COLUMNA1.3-->	

								<div class="col-sm-6"><!-- COLUMNA 1.3-->
									<label>Telefono: </label>
									<div class="input-group">
										<div class="input-group-prepend">
											<div class="input-group-text"><i class="fa-solid fa-mobile-screen-button"></i></div>
										</div>
										<input name="telUsuario" id="telefono" type="number" class="form-control" placeholder="Nombres" required>
										<div class="valid-feedback">Exito.</div>
										<div class="invalid-feedback">Fallo.</div>
									</div>
								</div><!--FIN COLUMNA 3-->		
							</div><!-- FIN FILA3 CARD-BODY -->

							<div class="form-row"><!-- INICIO FILA 4 CARD-BODY -->
								<div class="col-sm-6"><!--COLUMNA 1.4-->
									<label>Correo</label>
									<div class="input-group">
										<div class="input-group-prepend">
											<div class="input-group-text"><i class="fa-solid fa-envelope-circle-check"></i></div>
										</div>
										<input name="mailUsuario" id="telefono" type="email" class="form-control" placeholder="Nombres" required>
										<small></small>
									</div>
								</div><!--FIN COLUMNA 1.4-->	

								<div class="col-sm-6"><!-- COLUMNA 1.3-->
									<label>Clave: </label>
									<div class="input-group">
										<div class="input-group-prepend">
											<div class="input-group-text"><i class="fa-solid fa-key"></i></div>
										</div>
                                                                            <input name="password" id="clave" type="password" class="form-control" autocomplete="off" placeholder="Contraseña" required>
										<small></small>
									</div>
								</div><!--FIN COLUMNA 4-->		
							</div><!-- FIN FILA4 CARD-BODY -->							

						  <!-- CAJA DE ALERTAR -->
						  <div id="caja" name="caja" class="alert alert-success" role="alert" style="display: none;">
							Registro Exitoso!
						  </div>
                                                  <input type="hidden" name="action" value="Guardar">
                                                  <input  type="submit" value="ENVIAR">
						  																				

						</form><!-- FIN FORM -->
					</div><!-- FIN CARD-BODY -->
				</div>
			</div>
		</div><!-- FIN FILA -->
	</div><!-- FIN CONTAINER -->

</body>
</html>
