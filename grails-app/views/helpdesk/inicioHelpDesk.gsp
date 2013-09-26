<html>
	<head>
		<meta name='layout' content='main'/>
		<g:set var="entityName" value="${message(code: 'ticket.label', default: 'Ticket')}" />
		<title><g:message code="springSecurity.login.title"/></title>
		<style type="text/css">			
			#contenido{
				padding-top: 1%;
				width: 960px;
				font-size: 13pt;
				color: #FD7E00;
				text-align: left;
			}
			#contenido .pregFrecuentes{
				padding-left: 2%;
				width: 46%;
				float:left;				
			}
			#contenido .novedades{
				padding-left: 4%;
				width: 46%;	
				float: left;
			}
			#contenido .novedades .busqueda{
				text-align: right;
				width: 40%;
				float: left;
			}
		</style>
	</head>
	<body>		
		<div id="contenido">
			<div class="pregFrecuentes">
				<div style="height: 30px">
					Problemas Frecuentes
				</div>
				<div>
					<g:textArea name="probFrecuentes" value=""/>
				</div>
			</div>
			<div class="novedades">
				<div>
					<div style="float: left; width: 40%; height: 30px">
						Novedades
					</div>
					<div class="busqueda" style="font-size: 10pt">
						<g:textField name="buscar"/>
					</div>
				</div>
				<div>
					<g:textArea name="probFrecuentes" value="" rows="10" cols="70"/>
				</div>
			</div>
		</div>
		<!-- Grilla -->
		<g:render template="/ticket/list" model="[ticketInstanceList:ticketInstanceList,ticketInstanceTotal:ticketInstanceTotal]" />

		<!-- Contenido -->
	</body>
</html>