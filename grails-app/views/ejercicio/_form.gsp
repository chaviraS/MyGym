<%@ page import="mygym.Ejercicio" %>



<div class="fieldcontain ${hasErrors(bean: ejercicioInstance, field: 'ejercicio', 'error')} required">
	<label for="ejercicio">
		<g:message code="ejercicio.ejercicio.label" default="Ejercicio" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="ejercicio" required="" value="${ejercicioInstance?.ejercicio}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ejercicioInstance, field: 'series', 'error')} required">
	<label for="series">
		<g:message code="ejercicio.series.label" default="Series" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="series" required="" value="${ejercicioInstance?.series}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ejercicioInstance, field: 'repeticiones', 'error')} required">
	<label for="repeticiones">
		<g:message code="ejercicio.repeticiones.label" default="Repeticiones" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="repeticiones" required="" value="${ejercicioInstance?.repeticiones}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ejercicioInstance, field: 'rutina', 'error')} required">
	<label for="rutina">
		<g:message code="ejercicio.rutina.label" default="Rutina" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="rutina" name="rutina.id" from="${mygym.Rutina.list()}" optionKey="id" required="" value="${ejercicioInstance?.rutina?.id}" class="many-to-one"/>

</div>

