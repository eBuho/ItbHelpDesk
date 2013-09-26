
<%@ page import="pe.itb.helpdesk.Ticket" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'ticket.label', default: 'Ticket')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-ticket" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="_list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-ticket" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list ticket">
			
				<g:if test="${ticketInstance?.numeroDeTicket}">
				<li class="fieldcontain">
					<span id="numeroDeTicket-label" class="property-label"><g:message code="ticket.numeroDeTicket.label" default="Numero De Ticket" /></span>
					
						<span class="property-value" aria-labelledby="numeroDeTicket-label"><g:fieldValue bean="${ticketInstance}" field="numeroDeTicket"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ticketInstance?.asunto}">
				<li class="fieldcontain">
					<span id="asunto-label" class="property-label"><g:message code="ticket.asunto.label" default="Asunto" /></span>
					
						<span class="property-value" aria-labelledby="asunto-label"><g:fieldValue bean="${ticketInstance}" field="asunto"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ticketInstance?.clase}">
				<li class="fieldcontain">
					<span id="clase-label" class="property-label"><g:message code="ticket.clase.label" default="Clase" /></span>
					
						<span class="property-value" aria-labelledby="clase-label"><g:link controller="claseTicket" action="show" id="${ticketInstance?.clase?.id}">${ticketInstance?.clase?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${ticketInstance?.cliente}">
				<li class="fieldcontain">
					<span id="cliente-label" class="property-label"><g:message code="ticket.cliente.label" default="Cliente" /></span>
					
						<span class="property-value" aria-labelledby="cliente-label"><g:link controller="cliente" action="show" id="${ticketInstance?.cliente?.id}">${ticketInstance?.cliente?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${ticketInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="ticket.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${ticketInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${ticketInstance?.descripcion}">
				<li class="fieldcontain">
					<span id="descripcion-label" class="property-label"><g:message code="ticket.descripcion.label" default="Descripcion" /></span>
					
						<span class="property-value" aria-labelledby="descripcion-label"><g:fieldValue bean="${ticketInstance}" field="descripcion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ticketInstance?.estado}">
				<li class="fieldcontain">
					<span id="estado-label" class="property-label"><g:message code="ticket.estado.label" default="Estado" /></span>
					
						<span class="property-value" aria-labelledby="estado-label"><g:fieldValue bean="${ticketInstance}" field="estado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ticketInstance?.fechaDeSolicitud}">
				<li class="fieldcontain">
					<span id="fechaDeSolicitud-label" class="property-label"><g:message code="ticket.fechaDeSolicitud.label" default="Fecha De Solicitud" /></span>
					
						<span class="property-value" aria-labelledby="fechaDeSolicitud-label"><g:formatDate date="${ticketInstance?.fechaDeSolicitud}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${ticketInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="ticket.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${ticketInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${ticketInstance?.usuarioCrea}">
				<li class="fieldcontain">
					<span id="usuarioCrea-label" class="property-label"><g:message code="ticket.usuarioCrea.label" default="Usuario Crea" /></span>
					
						<span class="property-value" aria-labelledby="usuarioCrea-label"><g:fieldValue bean="${ticketInstance}" field="usuarioCrea"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ticketInstance?.usuarioModifica}">
				<li class="fieldcontain">
					<span id="usuarioModifica-label" class="property-label"><g:message code="ticket.usuarioModifica.label" default="Usuario Modifica" /></span>
					
						<span class="property-value" aria-labelledby="usuarioModifica-label"><g:fieldValue bean="${ticketInstance}" field="usuarioModifica"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${ticketInstance?.id}" />
					<g:link class="edit" action="edit" id="${ticketInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
