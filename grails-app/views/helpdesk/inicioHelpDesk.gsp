<html>
<head>
<meta name='layout' content='main' />

<title><g:message code="default.helpdesk.label" default="Mesa de Ayuda" /></title>
<g:javascript library="jquery"/>
<style type="text/css">
#contenido {
	padding-top: 1%;
	width: 960px;
	color: #FD7E00;
	text-align: left;
}

#contenido .pregFrecuentes {
	padding-left: 2%;
	width: 48%;
	float: left;
}

#contenido .novedades {
	padding-left: 2%;
	width: 48%;
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
				<g:textArea name="probFrecuentes" value="" width="100%" />
			</div>
		</div>
		<div class="novedades">
			<p>Novedades</p>
			<div>
				<g:textArea name="novedades" value="" width="100%"/>
			</div>
		</div>

		<div class="grilladet" id="grilladet">
			<g:render template="list" contextPath="/ticket/"
				model="[ticketInstanceList:ticketInstanceList,ticketInstanceTotal:ticketInstanceTotal]" />
		</div>
	</div>
</body>
</html>