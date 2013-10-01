
<%@ page import="pe.itb.helpdesk.Ticket"%>
<g:set var="entityName" value="${message(code: 'ticket.label', default: 'Ticket')}" />
<a href="#list-ticket" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
		default="Skip to content&hellip;" /></a>
<div class="nav" role="navigation">
	<%--<ul>
		<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label" /></a></li>
		<li><g:link class="create" action="create">
				<g:message code="default.new.label" args="[entityName]" />
			</g:link></li>
	</ul>--%>
</div>
<div id="list-ticket" class="content scaffold-list" role="main">
	<%--<h1>
		<g:message code="default.list.label" args="[entityName]" />
	</h1>
	--%><div>
		<div style="float: left; width: 100px"><g:message code="default.list2.label" args="[entityName]" /></div>
		<div style="float: left;">
			<g:remoteLink controller="ticket" action="buscar" id="T" update="grilladet"
				style="color: black; text-decoration: none;">
				Todos (${cont.get("T")})
			</g:remoteLink>
			|
			<g:remoteLink controller="ticket" action="buscar" id="P" update="grilladet"
				style="color: black; text-decoration: none;">
				Pendientes (${cont.get("P")})
			</g:remoteLink>
			|
			<g:remoteLink controller="ticket" action="buscar" id="R" update="grilladet"
				style="color: black; text-decoration: none;">
				Resueltos (${cont.get("R")})
			</g:remoteLink>
			|
			<g:remoteLink controller="ticket" action="buscar" id="E" update="grilladet"
				style="color: black; text-decoration: none;">
				Eliminados (${cont.get("E")})
			</g:remoteLink>
			|
			<g:link controller="ticket" action="create" style="color: black; text-decoration: none;">Nuevo Ticket</g:link>
		</div>
	</div>
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
					<td><g:link controller="ticket" action="show" id="${ticketInstance.id}">
							Ver
						</g:link></td>
				</tr>
			</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<g:paginate total="${ticketInstanceTotal}" />
	</div>
</div>
