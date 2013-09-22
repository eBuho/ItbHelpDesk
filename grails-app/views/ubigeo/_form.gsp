<%@ page import="pe.itb.comunes.Ubigeo" %>



<div class="fieldcontain ${hasErrors(bean: ubigeoInstance, field: 'codUbigeo', 'error')} required">
	<label for="codUbigeo">
		<g:message code="ubigeo.codUbigeo.label" default="Cod Ubigeo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="codUbigeo" maxlength="6" pattern="${ubigeoInstance.constraints.codUbigeo.matches}" required="" value="${ubigeoInstance?.codUbigeo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: ubigeoInstance, field: 'desUbigeo', 'error')} required">
	<label for="desUbigeo">
		<g:message code="ubigeo.desUbigeo.label" default="Des Ubigeo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="desUbigeo" maxlength="100" required="" value="${ubigeoInstance?.desUbigeo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: ubigeoInstance, field: 'ubigeoSup', 'error')} ">
	<label for="ubigeoSup">
		<g:message code="ubigeo.ubigeoSup.label" default="Ubigeo Sup" />
		
	</label>
	<g:select id="ubigeoSup" name="ubigeoSup.id" from="${pe.itb.comunes.Ubigeo.list()}" optionKey="id" value="${ubigeoInstance?.ubigeoSup?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

