<html>
<head>
<meta name='layout' content='main' />
<g:set var="entityName"
	value="${message(code: 'ticket.label', default: 'Ticket')}" />
<title><g:message code="springSecurity.login.title" /></title>
<style type="text/css">
#contenido {
	padding-top: 1%;
	width: 960px;
	color: #FD7E00;
	text-align: left;
}

#contenido .pregFrecuentes {
	padding-left: 2%;
	width: 300px;
	float: left;
}

#contenido .novedades {
	padding-left: 2%;
	width: 300px;
	float: left;
}
#contenido .grilladet {
	clear: both;
}

#contenido .novedades .busqueda {
	text-align: right;
	width: 40%;
	float: left;
}
</style>
</head>
<body>
	<div id="contenido">
		<div class="pregFrecuentes">
			<p>Problemas Frecuentes</p>
			<div>
				<g:textArea name="probFrecuentes" value="" />
			</div>
		</div>
		<div class="novedades">
			<p>Novedades</p>
			<div>
				<g:textArea name="novedades" value="" />
			</div>
		</div>

		<div class="grilladet">
			<g:render template="/Ticket/list"
				model="[ticketInstanceList:ticketInstanceList,ticketInstanceTotal:ticketInstanceTotal]" />
		</div>
	</div>
</body>
</html>