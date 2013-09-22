
<%@ page import="pe.itb.comunes.Ubigeo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'ubigeo.label', default: 'Ubigeo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-ubigeo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-ubigeo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list ubigeo">
			
				<g:if test="${ubigeoInstance?.codUbigeo}">
				<li class="fieldcontain">
					<span id="codUbigeo-label" class="property-label"><g:message code="ubigeo.codUbigeo.label" default="Cod Ubigeo" /></span>
					
						<span class="property-value" aria-labelledby="codUbigeo-label"><g:fieldValue bean="${ubigeoInstance}" field="codUbigeo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ubigeoInstance?.desUbigeo}">
				<li class="fieldcontain">
					<span id="desUbigeo-label" class="property-label"><g:message code="ubigeo.desUbigeo.label" default="Des Ubigeo" /></span>
					
						<span class="property-value" aria-labelledby="desUbigeo-label"><g:fieldValue bean="${ubigeoInstance}" field="desUbigeo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ubigeoInstance?.usuCrea}">
				<li class="fieldcontain">
					<span id="usuCrea-label" class="property-label"><g:message code="ubigeo.usuCrea.label" default="Usu Crea" /></span>
					
						<span class="property-value" aria-labelledby="usuCrea-label"><g:fieldValue bean="${ubigeoInstance}" field="usuCrea"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ubigeoInstance?.usuModifica}">
				<li class="fieldcontain">
					<span id="usuModifica-label" class="property-label"><g:message code="ubigeo.usuModifica.label" default="Usu Modifica" /></span>
					
						<span class="property-value" aria-labelledby="usuModifica-label"><g:fieldValue bean="${ubigeoInstance}" field="usuModifica"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ubigeoInstance?.ubigeoSup}">
				<li class="fieldcontain">
					<span id="ubigeoSup-label" class="property-label"><g:message code="ubigeo.ubigeoSup.label" default="Ubigeo Sup" /></span>
					
						<span class="property-value" aria-labelledby="ubigeoSup-label"><g:link controller="ubigeo" action="show" id="${ubigeoInstance?.ubigeoSup?.id}">${ubigeoInstance?.ubigeoSup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${ubigeoInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="ubigeo.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${ubigeoInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${ubigeoInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="ubigeo.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${ubigeoInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${ubigeoInstance?.id}" />
					<g:link class="edit" action="edit" id="${ubigeoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
