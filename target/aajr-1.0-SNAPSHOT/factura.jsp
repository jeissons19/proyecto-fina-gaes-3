<%-- 
    Document   : factura
    Created on : 27/09/2022, 10:24:40 PM
    Author     : Anderson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <title>Factura de venta</title>
    <link rel="stylesheet" href="facturacss.css">
    <script src="js/bootstrap_prince.js"></script>
</head>
  <header>
  <div class="col-8"><img class="logo" src="../img/logo2.jpg"></div>
  <div class="col-4"><H1 class="nombre">AAJR DOTACIONES SAS</H1></div>
  </header>
<BR></BR>
  <body>
    <h2>
    <div  id="factura" class="col">
        <div  class="form-group">
            <label for="order_expected">Factura de venta electronica No.</label>
            <input type="text"  class="form-control" id="FacturaInput" placeholder="0">
        </div>
    </h2>
    <h1 class="h4 mb-0">Cliente</h1>
                                <hr />
                                <form action="#" class="mb-3" />
                                <div class="row">
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="supplier">Nombre del Cliente</label>
                                            <select id="idReceptor" class="select-2">
                                                <option value="702320717" selected="" />CasaLibre 
                                                <option value="1212154" selected="" />ML
                                            </select>
                                     </div>
                                        
                                    </div>
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="supplier">Metodo de Pago</label>
                                            <select id="medioPago" class="select-2">
                                                <option value="01" selected="" />Efectivo
                                                <option value="02"  />Tarjeta
                                                <option value="03"  />Cheque
                                                <option value="04"  />Transferencia - depósito bancario
                                                                                            </select>
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="supplier">Condicion de Venta</label>
                                            <select  id="condicionVenta" class="select-2">
                                                <option value="01" selected="" />Contado
                                                <option value="02"  />Credito
                                                <option value="03"  />Consignacion
                                                
                                            </select>
                                        </div>
                                    </div>
                                    <div  id="plazoCredito" class="col">
                                        <div  class="form-group">
                                            <label for="order_expected">Plazo de Credito</label>
                                            <input type="text"  class="form-control" id="plazoCreditoInput" placeholder="21">
                                        </div>

                                    </div>
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="supplier">Tipo Moneda</label>
                                            <select id="tipoMoneda" class="select-2">
                                                <option value="CRC" selected="" />COP
                                                <option value="USD"/>USD

                                            </select>
                                        </div>
                                    </div>
                                </div>

            <br>
            <br>
            <br>
            

        <table class="table">
        <thead>
          <tr>
              <th><div class="form-row1"><!-- INICIO FILA CARD-BODY -->
                <div class="col-sm-2"><!-- COLUMNA 1-->
                    <label>Codigo</label>
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <div class="input-group-text"><i class="fa-solid fa-address-card"></i></div>
                        </div>
                        <input name="id" id="id" type="number" class="form-control" placeholder="Codigo" required>
                    </div></th>
                    <th><div class="form-row1"><!-- INICIO FILA CARD-BODY -->
                        <div class="col-sm-2"><!-- COLUMNA 1-->
                            <label>Descripcion</label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <div class="input-group-text"><i class="fa-solid fa-address-card"></i></div>
                                </div>
                                <input name="id" id="id" type="number" class="form-control" placeholder="Descripcion" required>
                            </div></th>
                            <th><div class="form-row1"><!-- INICIO FILA CARD-BODY -->
                                <div class="col-sm-2"><!-- COLUMNA 1-->
                                    <label>Cantidad</label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text"><i class="fa-solid fa-address-card"></i></div>
                                        </div>
                                        <input name="id" id="id" type="number" class="form-control" placeholder="Cantidad" required>
                                    </div></th>
        <th><div class="form-row1"><!-- INICIO FILA CARD-BODY -->
            <div class="col-sm-2"><!-- COLUMNA 1-->
                <label>Subtotal</label>
                <div class="input-group">
                    <div class="input-group-prepend">
                        <div class="input-group-text"><i class="fa-solid fa-address-card"></i></div>
                    </div>
                    <input name="id" id="id" type="number" class="form-control" placeholder="Subtotal" required>
                    </div></th>
                <th><div class="form-row1"><!-- INICIO FILA CARD-BODY -->
                    <div class="col-sm-2"><!-- COLUMNA 1-->
                        <label>Iva 19%</label>
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <div class="input-group-text"><i class="fa-solid fa-address-card"></i></div>
                            </div>
                            <input name="id" id="id" type="number" class="form-control" placeholder="Iva" required>
                        </div></th>
                        <th><div class="form-row1"><!-- INICIO FILA CARD-BODY -->
                            <div class="col-sm-2"><!-- COLUMNA 1-->
                                <label>Total</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text"><i class="fa-solid fa-address-card"></i></div>
                                    </div>
                                    <input name="id" id="id" type="number" class="form-control" placeholder="Total" required>
                                </div></th>
          </tr>
        </thead>
    
  </body>
</html>
