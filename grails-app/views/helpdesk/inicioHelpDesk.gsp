<html>
<head>
<meta name='layout' content='main' />

<title><g:message code="default.helpdesk.label" default="Mesa de Ayuda" /></title>
<g:javascript library="jquery"/>

</head>
<body>
	<div id="contenido" >
		<div class="pregFrecuentes">
			<p>Problemas Frecuentes</p>
			<g:textArea name="areapreg" value="" />
		</div>
		<div class="novedades">
			<p>Novedades</p>
			<g:textArea name="areanov" value="" />
		</div>

		<div class="grilladet" id="grilladet">
			<g:render template="list" contextPath="/ticket/"
				model="[ticketInstanceList:ticketInstanceList,ticketInstanceTotal:ticketInstanceTotal]" />
		</div>
	</div>
</body>
</html>