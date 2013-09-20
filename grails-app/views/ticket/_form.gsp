<%@ page import="pe.itb.comunes.Ticket" %>



<div class="fieldcontain ${hasErrors(bean: ticketInstance, field: 'numTicket', 'error')} ">
	<label for="numTicket">
		<g:message code="ticket.numTicket.label" default="Num Ticket" />
		
	</label>
	<g:textField name="numTicket" maxlength="10" readonly="readonly" value="${ticketInstance?.numTicket}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: ticketInstance, field: 'cliente', 'error')} required">
	<label for="cliente">
		<g:message code="ticket.cliente.label" default="Cliente" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="cliente" name="cliente.id" from="${pe.itb.comunes.Cliente.list()}" optionKey="id" required="" value="${ticketInstance?.cliente?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: ticketInstance, field: 'desAsunto', 'error')} ">
	<label for="desAsunto">
		<g:message code="ticket.desAsunto.label" default="Des Asunto" />
		
	</label>
	<g:textField name="desAsunto" value="${ticketInstance?.desAsunto}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: ticketInstance, field: 'fechSolicitud', 'error')} required">
	<label for="fechSolicitud">
		<g:message code="ticket.fechSolicitud.label" default="Fech Solicitud" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechSolicitud" precision="day"  value="${ticketInstance?.fechSolicitud}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: ticketInstance, field: 'flgEstado', 'error')} ">
	<label for="flgEstado">
		<g:message code="ticket.flgEstado.label" default="Flg Estado" />
		
	</label>
	<g:textField name="flgEstado" value="${ticketInstance?.flgEstado}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: ticketInstance, field: 'usuCrea', 'error')} ">
	<label for="usuCrea">
		<g:message code="ticket.usuCrea.label" default="Usu Crea" />
		
	</label>
	<g:textField name="usuCrea" value="${ticketInstance?.usuCrea}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: ticketInstance, field: 'usuModifica', 'error')} ">
	<label for="usuModifica">
		<g:message code="ticket.usuModifica.label" default="Usu Modifica" />
		
	</label>
	<g:textField name="usuModifica" value="${ticketInstance?.usuModifica}"/>
</div>

