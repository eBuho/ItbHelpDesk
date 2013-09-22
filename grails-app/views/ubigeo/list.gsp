
<%@ page import="pe.itb.comunes.Ubigeo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'ubigeo.label', default: 'Ubigeo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-ubigeo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-ubigeo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="codUbigeo" title="${message(code: 'ubigeo.codUbigeo.label', default: 'Cod Ubigeo')}" />
					
						<g:sortableColumn property="desUbigeo" title="${message(code: 'ubigeo.desUbigeo.label', default: 'Des Ubigeo')}" />
					
						<g:sortableColumn property="usuCrea" title="${message(code: 'ubigeo.usuCrea.label', default: 'Usu Crea')}" />
					
						<g:sortableColumn property="usuModifica" title="${message(code: 'ubigeo.usuModifica.label', default: 'Usu Modifica')}" />
					
						<th><g:message code="ubigeo.ubigeoSup.label" default="Ubigeo Sup" /></th>
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'ubigeo.dateCreated.label', default: 'Date Created')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${ubigeoInstanceList}" status="i" var="ubigeoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${ubigeoInstance.id}">${fieldValue(bean: ubigeoInstance, field: "codUbigeo")}</g:link></td>
					
						<td>${fieldValue(bean: ubigeoInstance, field: "desUbigeo")}</td>
					
						<td>${fieldValue(bean: ubigeoInstance, field: "usuCrea")}</td>
					
						<td>${fieldValue(bean: ubigeoInstance, field: "usuModifica")}</td>
					
						<td>${fieldValue(bean: ubigeoInstance, field: "ubigeoSup")}</td>
					
						<td><g:formatDate date="${ubigeoInstance.dateCreated}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${ubigeoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
