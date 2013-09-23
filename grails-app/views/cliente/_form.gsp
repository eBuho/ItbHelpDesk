<%@ page import="pe.itb.helpdesk.Cliente" %>



<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'apePaterno', 'error')} ">
	<label for="apePaterno">
		<g:message code="cliente.apePaterno.label" default="Ape Paterno" />
		
	</label>
	<g:textField name="apePaterno" maxlength="40" value="${clienteInstance?.apePaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'apeMaterno', 'error')} ">
	<label for="apeMaterno">
		<g:message code="cliente.apeMaterno.label" default="Ape Materno" />
		
	</label>
	<g:textField name="apeMaterno" maxlength="40" value="${clienteInstance?.apeMaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="cliente.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" maxlength="60" value="${clienteInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'tipDocumento', 'error')} ">
	<label for="tipDocumento">
		<g:message code="cliente.tipDocumento.label" default="Tip Documento" />
		
	</label>
<%--	<g:select name="tipDocumento" from="${clienteInstance.constraints.tipDocumento.inList}" value="${clienteInstance?.tipDocumento}" valueMessagePrefix="cliente.tipDocumento" noSelection="['': '']"/>--%>
	<itb:selectParametro dominio="001" entidad="${clienteInstance}" atributo="tipDocumento"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'numDocumento', 'error')} ">
	<label for="numDocumento">
		<g:message code="cliente.numDocumento.label" default="Num Documento" />
		
	</label>
	<g:textField name="numDocumento" maxlength="9" pattern="${clienteInstance.constraints.numDocumento.matches}" value="${clienteInstance?.numDocumento}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'flgSexo', 'error')} ">
	<label for="flgSexo">
		<g:message code="cliente.flgSexo.label" default="Flg Sexo" />
		
	</label>
	<g:select name="flgSexo" from="${clienteInstance.constraints.flgSexo.inList}" value="${clienteInstance?.flgSexo}" valueMessagePrefix="cliente.flgSexo" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'fecNacimiento', 'error')} ">
	<label for="fecNacimiento">
		<g:message code="cliente.fecNacimiento.label" default="Fec Nacimiento" />
		
	</label>
	<g:datePicker name="fecNacimiento" widget="datePicker" precision="day"  value="${clienteInstance?.fecNacimiento}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'numTelefono', 'error')} ">
	<label for="numTelefono">
		<g:message code="cliente.numTelefono.label" default="Num Telefono" />
		
	</label>
	<g:textField name="numTelefono" maxlength="9" pattern="${clienteInstance.constraints.numTelefono.matches}" value="${clienteInstance?.numTelefono}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'desEmail', 'error')} ">
	<label for="desEmail">
		<g:message code="cliente.desEmail.label" default="Des Email" />
		
	</label>
	<g:field type="email" name="desEmail" maxlength="60" value="${clienteInstance?.desEmail}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'desDireccion', 'error')} ">
	<label for="desDireccion">
		<g:message code="cliente.desDireccion.label" default="Des Direccion" />
		
	</label>
	<g:textField name="desDireccion" maxlength="200" value="${clienteInstance?.desDireccion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'ubigeo', 'error')} ">
	<label for="ubigeo">
		<g:message code="cliente.ubigeo.label" default="Ubigeo" />
		
	</label>
	<g:select id="ubigeo" name="ubigeo.id" from="${pe.itb.comunes.Ubigeo.list()}" optionKey="id" value="${clienteInstance?.ubigeo?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'codCliente', 'error')} ">
	<label for="codCliente">
		<g:message code="cliente.codCliente.label" default="Cod Cliente" />
		
	</label>
	<g:textField name="codCliente" value="${clienteInstance?.codCliente}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'tickets', 'error')} ">
	<label for="tickets">
		<g:message code="cliente.tickets.label" default="Tickets" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${clienteInstance?.tickets?}" var="t">
    <li><g:link controller="ticket" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="ticket" action="create" params="['cliente.id': clienteInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'ticket.label', default: 'Ticket')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'usuCrea', 'error')} ">
	<label for="usuCrea">
		<g:message code="cliente.usuCrea.label" default="Usu Crea" />
		
	</label>
	<g:textField name="usuCrea" value="${clienteInstance?.usuCrea}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'usuModifica', 'error')} ">
	<label for="usuModifica">
		<g:message code="cliente.usuModifica.label" default="Usu Modifica" />
		
	</label>
	<g:textField name="usuModifica" value="${clienteInstance?.usuModifica}"/>
</div>

