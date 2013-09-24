<%@ page import="pe.itb.helpdesk.Ticket" %>



<div class="fieldcontain ${hasErrors(bean: ticketInstance, field: 'numeroDeTicket', 'error')} ">
	<label for="numeroDeTicket">
		<g:message code="ticket.numeroDeTicket.label" default="Numero De Ticket" />
		
	</label>
	<g:textField name="numeroDeTicket" maxlength="10" readonly="readonly" value="${ticketInstance?.numeroDeTicket}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: ticketInstance, field: 'asunto', 'error')} ">
	<label for="asunto">
		<g:message code="ticket.asunto.label" default="Asunto" />
		
	</label>
	<g:textField name="asunto" value="${ticketInstance?.asunto}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: ticketInstance, field: 'clase', 'error')} ">
	<label for="clase">
		<g:message code="ticket.clase.label" default="Clase" />
		
	</label>
	<g:select id="clase" name="clase.id" from="${pe.itb.helpdesk.ClaseTicket.list()}" optionKey="id" value="${ticketInstance?.clase?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: ticketInstance, field: 'cliente', 'error')} ">
	<label for="cliente">
		<g:message code="ticket.cliente.label" default="Cliente" />
		
	</label>
	<g:select id="cliente" name="cliente.id" from="${pe.itb.helpdesk.Cliente.list()}" optionKey="id" value="${ticketInstance?.cliente?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: ticketInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="ticket.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" value="${ticketInstance?.descripcion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: ticketInstance, field: 'estado', 'error')} ">
	<label for="estado">
		<g:message code="ticket.estado.label" default="Estado" />
		
	</label>
	<g:textField name="estado" value="${ticketInstance?.estado}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: ticketInstance, field: 'fechaDeSolicitud', 'error')} ">
	<label for="fechaDeSolicitud">
		<g:message code="ticket.fechaDeSolicitud.label" default="Fecha De Solicitud" />
		
	</label>
	<g:datePicker name="fechaDeSolicitud" precision="day"  value="${ticketInstance?.fechaDeSolicitud}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: ticketInstance, field: 'usuarioCrea', 'error')} ">
	<label for="usuarioCrea">
		<g:message code="ticket.usuarioCrea.label" default="Usuario Crea" />
		
	</label>
	<g:textField name="usuarioCrea" value="${ticketInstance?.usuarioCrea}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: ticketInstance, field: 'usuarioModifica', 'error')} ">
	<label for="usuarioModifica">
		<g:message code="ticket.usuarioModifica.label" default="Usuario Modifica" />
		
	</label>
	<g:textField name="usuarioModifica" value="${ticketInstance?.usuarioModifica}"/>
</div>

