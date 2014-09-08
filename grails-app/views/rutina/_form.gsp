<%@ page import="mygym.Rutina" %>



<div class="fieldcontain ${hasErrors(bean: rutinaInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="rutina.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${rutinaInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: rutinaInstance, field: 'dias', 'error')} required">
	<label for="dias">
		<g:message code="rutina.dias.label" default="Dias" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="dias" required="" value="${rutinaInstance?.dias}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: rutinaInstance, field: 'duracion', 'error')} required">
	<label for="duracion">
		<g:message code="rutina.duracion.label" default="Duracion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="duracion" required="" value="${rutinaInstance?.duracion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: rutinaInstance, field: 'grupomuscular', 'error')} required">
	<label for="grupomuscular">
		<g:message code="rutina.grupomuscular.label" default="Grupomuscular" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="grupomuscular" from="${rutinaInstance.constraints.grupomuscular.inList}" required="" value="${rutinaInstance?.grupomuscular}" valueMessagePrefix="rutina.grupomuscular"/>

</div>

<div class="fieldcontain ${hasErrors(bean: rutinaInstance, field: 'ejercicio', 'error')} ">
	<label for="ejercicio">
		<g:message code="rutina.ejercicio.label" default="Ejercicio" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${rutinaInstance?.ejercicio?}" var="e">
    <li><g:link controller="ejercicio" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="ejercicio" action="create" params="['rutina.id': rutinaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'ejercicio.label', default: 'Ejercicio')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: rutinaInstance, field: 'member', 'error')} required">
	<label for="member">
		<g:message code="rutina.member.label" default="Member" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="member" name="member.id" from="${mygym.Member.list()}" optionKey="id" required="" value="${rutinaInstance?.member?.id}" class="many-to-one"/>

</div>

