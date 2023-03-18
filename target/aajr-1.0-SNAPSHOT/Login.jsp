<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Iniciar sesion</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/solid.css">
    <script src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>
   <link rel="stylesheet" href="estiloslogin.css">
</head>
<header>
<nav>
    <a href="#" id="menu-icon">
      <i class="fa fa-bars"></i>
    </a>
    <ul>
      <li>
        <a href="index.jsp">
          Home
        </a>
      </li>
    </ul>
  </nav>
</header>
<body>
    <div class="modal-dialog text-center">
        <div class="col-sm-8 main-section">
            <div class="modal-content">
                <div class="col-12 user-img">
                    <img src="img/img1.jpg" alt="">
                </div>
                <form class="col-12" action="LoginServlet">
                    <div class="form-group" id="user-group">
                        <input name="correo"type="text"class="form-control" placeholder="Nombre de usuario">
                    </div>
                    <div class="form-group" id="contraseña">
                        <input name="contraseña" type="password"class="form-control" placeholder="Contraseña">
                    </div>
                    <button type="submit" class="btn btn-light"><i class="fas fa-sign-in-alt"></i> INGRESAR</button>
                </form>
                <div class="col-12 forgot">
                  <a href="registrar.jsp">Registrar</a>
              </div>
                
            </div>
        </div>
    
    </div>

</body>
</html>
