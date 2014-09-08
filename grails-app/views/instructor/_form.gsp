<%@ page import="mygym.Instructor" %>



<div class="fieldcontain ${hasErrors(bean: instructorInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="instructor.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${instructorInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: instructorInstance, field: 'apellidoP', 'error')} required">
	<label for="apellidoP">
		<g:message code="instructor.apellidoP.label" default="Apellido P" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidoP" required="" value="${instructorInstance?.apellidoP}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: instructorInstance, field: 'apellidoM', 'error')} required">
	<label for="apellidoM">
		<g:message code="instructor.apellidoM.label" default="Apellido M" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidoM" required="" value="${instructorInstance?.apellidoM}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: instructorInstance, field: 'turno', 'error')} required">
	<label for="turno">
		<g:message code="instructor.turno.label" default="Turno" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="turno" from="${instructorInstance.constraints.turno.inList}" required="" value="${instructorInstance?.turno}" valueMessagePrefix="instructor.turno"/>

</div>



