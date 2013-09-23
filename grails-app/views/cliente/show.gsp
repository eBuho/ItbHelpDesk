
<%@ page import="pe.itb.helpdesk.Cliente" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'cliente.label', default: 'Cliente')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-cliente" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-cliente" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list cliente">
			
				<g:if test="${clienteInstance?.apePaterno}">
				<li class="fieldcontain">
					<span id="apePaterno-label" class="property-label"><g:message code="cliente.apePaterno.label" default="Ape Paterno" /></span>
					
						<span class="property-value" aria-labelledby="apePaterno-label"><g:fieldValue bean="${clienteInstance}" field="apePaterno"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clienteInstance?.apeMaterno}">
				<li class="fieldcontain">
					<span id="apeMaterno-label" class="property-label"><g:message code="cliente.apeMaterno.label" default="Ape Materno" /></span>
					
						<span class="property-value" aria-labelledby="apeMaterno-label"><g:fieldValue bean="${clienteInstance}" field="apeMaterno"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clienteInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="cliente.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${clienteInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clienteInstance?.tipDocumento}">
				<li class="fieldcontain">
					<span id="tipDocumento-label" class="property-label"><g:message code="cliente.tipDocumento.label" default="Tip Documento" /></span>
					
						<span class="property-value" aria-labelledby="tipDocumento-label">
<%--						<g:fieldValue bean="${clienteInstance}" field="tipDocumento"/>--%>
							<itb:decodeParametro valor="${clienteInstance?.tipDocumento}" catalogo="001" atributo="tipDocumento"/>
						</span>
					
				</li>
				</g:if>
			
				<g:if test="${clienteInstance?.numDocumento}">
				<li class="fieldcontain">
					<span id="numDocumento-label" class="property-label"><g:message code="cliente.numDocumento.label" default="Num Documento" /></span>
					
						<span class="property-value" aria-labelledby="numDocumento-label"><g:fieldValue bean="${clienteInstance}" field="numDocumento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clienteInstance?.flgSexo}">
				<li class="fieldcontain">
					<span id="flgSexo-label" class="property-label"><g:message code="cliente.flgSexo.label" default="Flg Sexo" /></span>
					
						<span class="property-value" aria-labelledby="flgSexo-label">
							<itb:decodeParametro valor="${clienteInstance?.flgSexo}" catalogo="002" atributo="flgSexo"/>
<%--						<g:fieldValue bean="${clienteInstance}" field="flgSexo"/>--%>
						</span>
					
				</li>
				</g:if>
			
				<g:if test="${clienteInstance?.fecNacimiento}">
				<li class="fieldcontain">
					<span id="fecNacimiento-label" class="property-label"><g:message code="cliente.fecNacimiento.label" default="Fec Nacimiento" /></span>
					
						<span class="property-value" aria-labelledby="fecNacimiento-label"><g:formatDate date="${clienteInstance?.fecNacimiento}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${clienteInstance?.numTelefono}">
				<li class="fieldcontain">
					<span id="numTelefono-label" class="property-label"><g:message code="cliente.numTelefono.label" default="Num Telefono" /></span>
					
						<span class="property-value" aria-labelledby="numTelefono-label"><g:fieldValue bean="${clienteInstance}" field="numTelefono"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clienteInstance?.desEmail}">
				<li class="fieldcontain">
					<span id="desEmail-label" class="property-label"><g:message code="cliente.desEmail.label" default="Des Email" /></span>
					
						<span class="property-value" aria-labelledby="desEmail-label"><g:fieldValue bean="${clienteInstance}" field="desEmail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clienteInstance?.desDireccion}">
				<li class="fieldcontain">
					<span id="desDireccion-label" class="property-label"><g:message code="cliente.desDireccion.label" default="Des Direccion" /></span>
					
						<span class="property-value" aria-labelledby="desDireccion-label"><g:fieldValue bean="${clienteInstance}" field="desDireccion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clienteInstance?.ubigeo}">
				<li class="fieldcontain">
					<span id="ubigeo-label" class="property-label"><g:message code="cliente.ubigeo.label" default="Ubigeo" /></span>
					
						<span class="property-value" aria-labelledby="ubigeo-label"><g:link controller="ubigeo" action="show" id="${clienteInstance?.ubigeo?.id}">${clienteInstance?.ubigeo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${clienteInstance?.codCliente}">
				<li class="fieldcontain">
					<span id="codCliente-label" class="property-label"><g:message code="cliente.codCliente.label" default="Cod Cliente" /></span>
					
						<span class="property-value" aria-labelledby="codCliente-label"><g:fieldValue bean="${clienteInstance}" field="codCliente"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clienteInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="cliente.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${clienteInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${clienteInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="cliente.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${clienteInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${clienteInstance?.tickets}">
				<li class="fieldcontain">
					<span id="tickets-label" class="property-label"><g:message code="cliente.tickets.label" default="Tickets" /></span>
					
						<g:each in="${clienteInstance.tickets}" var="t">
						<span class="property-value" aria-labelledby="tickets-label"><g:link controller="ticket" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${clienteInstance?.usuCrea}">
				<li class="fieldcontain">
					<span id="usuCrea-label" class="property-label"><g:message code="cliente.usuCrea.label" default="Usu Crea" /></span>
					
						<span class="property-value" aria-labelledby="usuCrea-label"><g:fieldValue bean="${clienteInstance}" field="usuCrea"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clienteInstance?.usuModifica}">
				<li class="fieldcontain">
					<span id="usuModifica-label" class="property-label"><g:message code="cliente.usuModifica.label" default="Usu Modifica" /></span>
					
						<span class="property-value" aria-labelledby="usuModifica-label"><g:fieldValue bean="${clienteInstance}" field="usuModifica"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${clienteInstance?.id}" />
					<g:link class="edit" action="edit" id="${clienteInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
