<%@ page import="mygym.Member" %>



<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'noSocio', 'error')} required">
	<label for="noSocio">
		<g:message code="member.noSocio.label" default="No Socio" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="noSocio" required="" value="${memberInstance?.noSocio}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="member.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${memberInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'apellidoP', 'error')} required">
	<label for="apellidoP">
		<g:message code="member.apellidoP.label" default="Apellido P" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidoP" required="" value="${memberInstance?.apellidoP}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'apellidoM', 'error')} required">
	<label for="apellidoM">
		<g:message code="member.apellidoM.label" default="Apellido M" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidoM" required="" value="${memberInstance?.apellidoM}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'sexo', 'error')} required">
	<label for="sexo">
		<g:message code="member.sexo.label" default="Sexo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="sexo" from="${memberInstance.constraints.sexo.inList}" required="" value="${memberInstance?.sexo}" valueMessagePrefix="member.sexo"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'telefono', 'error')} required">
	<label for="telefono">
		<g:message code="member.telefono.label" default="Telefono" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telefono" required="" value="${memberInstance?.telefono}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'celular', 'error')} required">
	<label for="celular">
		<g:message code="member.celular.label" default="Celular" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="celular" required="" value="${memberInstance?.celular}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'direccion', 'error')} required">
	<label for="direccion">
		<g:message code="member.direccion.label" default="Direccion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="direccion" required="" value="${memberInstance?.direccion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="member.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${memberInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'cumpleanos', 'error')} required">
	<label for="cumpleanos">
		<g:message code="member.cumpleanos.label" default="Cumpleanos" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cumpleanos" required="" value="${memberInstance?.cumpleanos}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'pagos', 'error')} ">
	<label for="pagos">
		<g:message code="member.pagos.label" default="Pagos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${memberInstance?.pagos?}" var="p">
    <li><g:link controller="pagos" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="pagos" action="create" params="['member.id': memberInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'pagos.label', default: 'Pagos')])}</g:link>
</li>
</ul>


</div>

