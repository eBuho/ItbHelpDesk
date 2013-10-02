
<%@ page import="pe.itb.helpdesk.Ticket"%>
<g:set var="entityName"
	value="${message(code: 'ticket.label', default: 'Ticket')}" />
<a href="#list-ticket" class="skip" tabindex="-1"><g:message
		code="default.link.skip.label" default="Skip to content&hellip;" /></a>

<%--<div id="list-ticket" role="main">
	--%>
	<div id ="menugrilla" class ="menugrilla" style = "float:left">
			<h3><a><g:message code="default.list2.label" args="[entityName]" /></a></h3>
	</div>
			<g:remoteLink controller="ticket" action="buscar" id="T"
				update="grilladet" >
				  Todos (${cont.get("T")})
			</g:remoteLink>
			|
			<g:remoteLink controller="ticket" action="buscar" id="P"
				update="grilladet">
				Pendientes (${cont.get("P")})
			</g:remoteLink>
			|
			<g:remoteLink controller="ticket" action="buscar" id="R"
				update="grilladet" >
				Resueltos (${cont.get("R")})
			</g:remoteLink>
			|
			<g:remoteLink controller="ticket" action="buscar" id="E"
				update="grilladet" >
				Eliminados (${cont.get("E")})
			</g:remoteLink>
			|
			<g:link controller="ticket" action="create">Nuevo Ticket</g:link>

	<g:if test="${flash.message}">
		<div class="message" role="status">
			${flash.message}
		</div>
	</g:if>
	<table>
		<thead>
			<tr>
				<g:sortableColumn property="numeroDeTicket"
					title="${message(code: 'ticket.numeroDeTicket.label', default: 'Numero De Ticket')}" />
				<g:sortableColumn property="asunto"
					title="${message(code: 'ticket.asunto.label', default: 'Asunto')}" />
				<th><g:message code="ticket.clase.label" default="Clase" /></th>
				<th><g:message code="ticket.cliente.label" default="Cliente" /></th>
				<g:sortableColumn property="dateCreated"
					title="${message(code: 'ticket.dateCreated.label', default: 'Date Created')}" />
				<g:sortableColumn property="descripcion"
					title="${message(code: 'ticket.descripcion.label', default: 'Descripcion')}" />
				<g:sortableColumn property="Acciones"
					title="${message(code: 'ticket.acciones.label', default: 'Acciones')}" />
			</tr>
		</thead>
		<tbody>
			<g:each in="${ticketInstanceList}" status="i" var="ticketInstance">
				<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					<td>
						${fieldValue(bean: ticketInstance, field: "numeroDeTicket")}
					
					<td>
						${fieldValue(bean: ticketInstance, field: "asunto")}
					</td>
					<td>
						${fieldValue(bean: ticketInstance, field: "clase")}
					</td>
					<td>
						${fieldValue(bean: ticketInstance, field: "cliente")}
					</td>
					<td><g:formatDate date="${ticketInstance.dateCreated}" /></td>
					<td>
						${fieldValue(bean: ticketInstance, field: "descripcion")}
					</td>
					<td><g:link controller="ticket" action="show"
							id="${ticketInstance.id}">
							Ver
						</g:link></td>
				</tr>
			</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<g:paginate total="${ticketInstanceTotal}" />
	</div>
<%--</div>
--%>