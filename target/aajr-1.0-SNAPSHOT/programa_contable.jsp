<%-- 
    Document   : programa_contable
    Created on : 27/09/2022, 09:40:05 PM
    Author     : Anderson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="estilos_programa_contable.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
   
    <body>
      

      <div class=" container-fluid row col-12 bg-white m-0">
          <div class="col-md-2 bg-light">
                  <ul class="list-group " style=" height: 600px; list-style: none" >
                      <li>
                         
                          <p class="btn font-weight-bold">Inventory Sales 3J</p>
                      </li>
            <li >
                <p type="button" class="btn dropdown-toggle" style="font-size: 20px" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Facturacion
                    </p>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="factura.jsp">Ventas</a>
                    </div>
               </li>
            <li> 
                    <p type="button" class="btn  dropdown-toggle" style="font-size: 20px" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Inventario
                    </p>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="ProductoServlet">Entradas al inventario</a>
                        <a class="dropdown-item" href="#">Salida del inventario</a>
                        <a class="dropdown-item" href="#">Costeo del inventario</a>
                    </div>
                </li>
            <li>
                    <p type="button" class="btn  dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Compras
                    </p>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#">Registro de compras</a>
                        <a class="dropdown-item" href="#">Registro de otros gastos</a>
                    </div>
                </li>
            <li>  
                    <p type="button" class="btn dropdown-toggle" style="font-size: 20px" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Informes
                    </p>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#">Informe de ventas</a>
                        <a class="dropdown-item" href="#">Estado de Resultados</a>
                    </div>
                </li>
            <li>
                    <p type="button" class="btn dropdown-toggle" style="font-size: 20px" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Usuarios
                    </p>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="UsuarioServlet">Tabla de usuarios</a>
                    </div>
                </li>
            <li> 
                    <p type="button" class="btn dropdown-toggle" style="font-size: 20px" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Salir
                    </p>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="../iniciar sesion/index.html">Salida segura</a>

                    </div>
                </li>
        </ul>
          </div>
        
        

        </div>
        
        






        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
</html>