<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="A layout example with a side menu that hides on mobile, just like the Pure website.">
        <title>Sistema de reservas</title>
        <link rel="stylesheet" href="http://yui.yahooapis.com/pure/0.6.0/pure-min.css">
        <link rel="stylesheet" href="http://yui.yahooapis.com/pure/0.6.0/grids-responsive-min.css">
        <link rel="stylesheet" href="css/pure/pure-min.css">
        <link rel="stylesheet" href="css/pure/grids-responsive-min.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        
        <!--[if lte IE 8]>
        <link rel="stylesheet" href="css/layouts/side-menu-old-ie.css">
        <![endif]-->
        <!--[if gt IE 8]><!-->
        <link rel="stylesheet" href="css/layouts/side-menu.css">
        <!--
        <link rel="stylesheet" href="css/layouts/navbar.css">
        -->
        <!--<![endif]-->
    </head>
    <body>
        <div class="">
            <div class="n-home-menu pure-menu pure-menu-horizontal pure-menu-fixed">
                <a class="pure-menu-heading" href="d_index.jsp">Sistema De Reservas</a>
            </div>
        </div>
        <div id="layout">
            <!-- Menu toggle -->
            <a href="#menu" id="menuLink" class="menu-link">
                <!-- Hamburger icon -->
                <span></span>
            </a>
            <div id="menu">
                <div class="pure-menu">
                    <a class="pure-menu-heading" href="#">Director</a>
                    <ul class="pure-menu-list">
                    	<li class="pure-menu-item"><a href="d_porcentaje_box.jsp" class="pure-menu-link">Porcentaje de Uso de Box </a></li>
                        <li class="pure-menu-item"><a href="d_porcentaje_medico.jsp" class="pure-menu-link">% Ocupación de Médico</a></li>
                        <li class="pure-menu-item"><a href="d_ver_medico_mas_solicitado.jsp" class="pure-menu-link">Médico más Solicitado</a></li>
                        <li class="pure-menu-item"><a href="d_obtener_paciente_mas_atendido.jsp" class="pure-menu-link">Pacientes más Atendidos</a></li>
                        <li class="pure-menu-item"><a href="d_ingreso_paciente.jsp" class="pure-menu-link">Ingresar Paciente </a></li>
                        <li class="pure-menu-item"><a href="d_ingreso_medico.jsp" class="pure-menu-link">Ingresar Médico</a></li>
                    </li>
                </ul>
            </div>
        </div>
        <div id="main">
            <div class="header">
                <h2>Ingreso de datos</h2>
            </div>
            <div class="content">
                <h2 class="content-subhead">Ingresar Médico</h2>
                <div class="pure-g">
                    <div class="pure-u-1-2">
                        <br>
                        <div>
                        	<form id="medicoForm" class="pure-form pure-form-aligned">
                            <fieldset>
                                <div class="pure-control-group">
                                    <label for="Nombres">Nombres</label><br>
                                    <input name="nombres"id="nombres" type="text" placeholder="Nombres">
                                </div>

                                <div class="pure-control-group">
                                    <label for="Apellidos">Apellidos</label><br>
                                    <input name="apellidos"id="apellidos" placeholder="Apellidos">
                                </div>

                                <div class="pure-control-group">
                                    <label for="RUT">RUT</label><br>
                                    <input name="rut" id="rut" placeholder="RUT">
                                </div>

                                <div class="pure-control-group">
                                   <label for="datetimepicker1">Fecha de nacimiento</label>
			                        <br>
			                        <div>
			                            <div class='input-group date' id='datetimepicker1'>
			                                <input name="f_nac" type='text' class="form-control" />
			                                <span class="input-group-addon">
			                                    <span class="glyphicon glyphicon-calendar"></span>
			                                </span>
			                            </div>
			                        </div>
                                </div>

                                <div class="pure-control-group">
                                    <label for="Telefono">Telefono</label><br>
                                    <input name="telefono" id="telefono" type="text" placeholder="Telefono">
                                </div>
                                    </label>

                                <div class="pure-control-group">
                                    <label for="Direccion">Dirección</label><br>
                                    <input name="direccion" id="direccion" type="text" placeholder="Dirección">
                                </div>

                                <div class="pure-control-group">
                                    <label for="Ciudad">Ciudad</label><br>
                                    <input name="ciudad" id="ciudad" type="text" placeholder="Ciudad">
                                </div>

                                <div class="pure-control-group">
                                    <label for="Email">Email</label><br>
                                    <input name="email" id="email" type="email" placeholder="Email">
                                </div>

                                <div class="pure-control-group">
                                    <label for="Especialidad">Especialidad</label><br>
                                    <input name="idEspecialidad" id="idEspecialidad" placeholder="Especialidad">
                                </div>

                                <div class="pure-control-group">
                                    <label for="Activo">Activo</label><br>
                                    <input name="activo" id="activo" placeholder="Activo">
                                </div>

                                </div>
                            </fieldset>
                        </form>
                        <br><button id="btnIngresar" type="submit" class="pure-button pure-button-primary">Ingresar</button>
                </div>
                <hr>
            </div>
        </div>
        <script src="js/ui.js"></script>
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.js"></script>
        <script src="js/moment/moment.min.js"></script>
        <script src="js/moment/es.js"></script>
        <script src="js/datetime_picker/bootstrap-datetimepicker.js"></script>
        <script src="js/hospital/d_ingreso_medico.js"></script>
        <!-- hablilitar datepicker -->
        <script type="text/javascript">
        $(function () {
        $('#datetimepicker1').datetimepicker();
        $('#datetimepicker2').datetimepicker();
        });
        </script>
    </body>
</html>