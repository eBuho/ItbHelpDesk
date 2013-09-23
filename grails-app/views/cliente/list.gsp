
<%@ page import="pe.itb.helpdesk.Cliente" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'cliente.label', default: 'Cliente')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-cliente" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-cliente" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="apePaterno" title="${message(code: 'cliente.apePaterno.label', default: 'Ape Paterno')}" />
					
						<g:sortableColumn property="apeMaterno" title="${message(code: 'cliente.apeMaterno.label', default: 'Ape Materno')}" />
					
						<g:sortableColumn property="nombre" title="${message(code: 'cliente.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="tipDocumento" title="${message(code: 'cliente.tipDocumento.label', default: 'Tip Documento')}" />
					
						<g:sortableColumn property="numDocumento" title="${message(code: 'cliente.numDocumento.label', default: 'Num Documento')}" />
					
						<g:sortableColumn property="flgSexo" title="${message(code: 'cliente.flgSexo.label', default: 'Flg Sexo')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${clienteInstanceList}" status="i" var="clienteInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${clienteInstance.id}">${fieldValue(bean: clienteInstance, field: "apePaterno")}</g:link></td>
					
						<td>${fieldValue(bean: clienteInstance, field: "apeMaterno")}</td>
					
						<td>${fieldValue(bean: clienteInstance, field: "nombre")}</td>
					
						<td>${fieldValue(bean: clienteInstance, field: "tipDocumento")}</td>
					
						<td>${fieldValue(bean: clienteInstance, field: "numDocumento")}</td>
					
						<td>${fieldValue(bean: clienteInstance, field: "flgSexo")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${clienteInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
