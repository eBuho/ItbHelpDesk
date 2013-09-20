
<%@ page import="pe.itb.comunes.Ticket" %>
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
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-ticket" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list ticket">
			
				<g:if test="${ticketInstance?.numTicket}">
				<li class="fieldcontain">
					<span id="numTicket-label" class="property-label"><g:message code="ticket.numTicket.label" default="Num Ticket" /></span>
					
						<span class="property-value" aria-labelledby="numTicket-label"><g:fieldValue bean="${ticketInstance}" field="numTicket"/></span>
					
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
			
				<g:if test="${ticketInstance?.desAsunto}">
				<li class="fieldcontain">
					<span id="desAsunto-label" class="property-label"><g:message code="ticket.desAsunto.label" default="Des Asunto" /></span>
					
						<span class="property-value" aria-labelledby="desAsunto-label"><g:fieldValue bean="${ticketInstance}" field="desAsunto"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ticketInstance?.fechSolicitud}">
				<li class="fieldcontain">
					<span id="fechSolicitud-label" class="property-label"><g:message code="ticket.fechSolicitud.label" default="Fech Solicitud" /></span>
					
						<span class="property-value" aria-labelledby="fechSolicitud-label"><g:formatDate date="${ticketInstance?.fechSolicitud}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${ticketInstance?.flgEstado}">
				<li class="fieldcontain">
					<span id="flgEstado-label" class="property-label"><g:message code="ticket.flgEstado.label" default="Flg Estado" /></span>
					
						<span class="property-value" aria-labelledby="flgEstado-label"><g:fieldValue bean="${ticketInstance}" field="flgEstado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ticketInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="ticket.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${ticketInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${ticketInstance?.usuCrea}">
				<li class="fieldcontain">
					<span id="usuCrea-label" class="property-label"><g:message code="ticket.usuCrea.label" default="Usu Crea" /></span>
					
						<span class="property-value" aria-labelledby="usuCrea-label"><g:fieldValue bean="${ticketInstance}" field="usuCrea"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ticketInstance?.usuModifica}">
				<li class="fieldcontain">
					<span id="usuModifica-label" class="property-label"><g:message code="ticket.usuModifica.label" default="Usu Modifica" /></span>
					
						<span class="property-value" aria-labelledby="usuModifica-label"><g:fieldValue bean="${ticketInstance}" field="usuModifica"/></span>
					
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
