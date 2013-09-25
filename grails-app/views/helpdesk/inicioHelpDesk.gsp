<html>
	<head>
		<title>Inicio al Sistema HelpDesk</title>
		<style type="text/css">
			#cabecera{
				width: 100%;
				margin: 0;
			}
			#cabecera .logo{
				padding-left: 2%;
				float: left;
				width: 47%;
				color: #00CACA;
				font-size: 14pt;
				font-weight: bold;
			}
			#cabecera .datos{
				padding-left: 2%;
				float: left;
				width: 47%;
				text-align: right;
			}
			#contenido{
				padding-top: 1%;
				width: 100%;
			}
			#contenido .pregFrecuentes{
				padding-left: 2%;
				text-align: left;
				font-size: 13pt;
				color: #FD7E00;
				width: 46%;
				float:left;				
			}
			#contenido .novedades{
				padding-left: 4%;
				text-align: left;
				font-size: 13pt;
				color: #FD7E00;
				width: 46%;	
				float: left;
			}
			#contenido .novedades .busqueda{
				text-align: right;
				width: 60%;
				float: left;
			}
		</style>
	</head>
	<body>
		<div id="cabecera">
			<div class="logo">
				<div>
					Bienvenido Javier Condor
				</div>
				<div>
					<h1>
						<a href="http://localhost:8090/ItbHelpDesk/">IT & B Consulting</a>
					</h1>
				</div>				
			</div>
			
			<div class="datos">
				<div>
					<p>
						<a href="#">Inicio</a> | <a href="#">Mis datos</a> | <a href="#">Salir</a>
					</p>
				</div>
				<div>
					<h1>
						<a href="http://localhost:8090/ItbHelpDesk/">IT & B Consulting</a>
					</h1>
				</div>	
			</div>	
		</div>
		<div style="width: 100%">
			<hr style="color: #00CACA; width: 100%">
		</div>	
		<div id="contenido">
			<div class="pregFrecuentes">
				<div>
					Problemas Frecuentes
				</div>
				<div>
					<g:textArea name="probFrecuentes" value="" rows="10" cols="70"/>
				</div>
			</div>
			<div class="novedades">
				<div>
					<div style="float: left; width: 40%">
						Novedades
					</div>
					<div class="busqueda">
						<g:textField name="buscar"/>
					</div>
				</div>
				<div>
					<g:textArea name="probFrecuentes" value="" rows="10" cols="70"/>
				</div>
			</div>
		</div><!-- Contenido -->
	</body>
</html>