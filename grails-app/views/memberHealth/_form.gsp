<%@ page import="mygym.MemberHealth" %>



<div class="fieldcontain ${hasErrors(bean: memberHealthInstance, field: 'tipoSangre', 'error')} required">
	<label for="tipoSangre">
		<g:message code="memberHealth.tipoSangre.label" default="Tipo Sangre" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="tipoSangre" from="${memberHealthInstance.constraints.tipoSangre.inList}" required="" value="${memberHealthInstance?.tipoSangre}" valueMessagePrefix="memberHealth.tipoSangre"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberHealthInstance, field: 'alergico', 'error')} required">
	<label for="alergico">
		<g:message code="memberHealth.alergico.label" default="Alergico" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="alergico" required="" value="${memberHealthInstance?.alergico}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberHealthInstance, field: 'operaciones', 'error')} required">
	<label for="operaciones">
		<g:message code="memberHealth.operaciones.label" default="Operaciones" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="operaciones" required="" value="${memberHealthInstance?.operaciones}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberHealthInstance, field: 'respiratorias', 'error')} required">
	<label for="respiratorias">
		<g:message code="memberHealth.respiratorias.label" default="Respiratorias" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="respiratorias" required="" value="${memberHealthInstance?.respiratorias}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberHealthInstance, field: 'cardiologia', 'error')} required">
	<label for="cardiologia">
		<g:message code="memberHealth.cardiologia.label" default="Cardiologia" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cardiologia" required="" value="${memberHealthInstance?.cardiologia}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberHealthInstance, field: 'enfermedades', 'error')} required">
	<label for="enfermedades">
		<g:message code="memberHealth.enfermedades.label" default="Enfermedades" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="enfermedades" required="" value="${memberHealthInstance?.enfermedades}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberHealthInstance, field: 'medicado', 'error')} required">
	<label for="medicado">
		<g:message code="memberHealth.medicado.label" default="Medicado" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="medicado" from="${memberHealthInstance.constraints.medicado.inList}" required="" value="${memberHealthInstance?.medicado}" valueMessagePrefix="memberHealth.medicado"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberHealthInstance, field: 'contactoEmergencia', 'error')} required">
	<label for="contactoEmergencia">
		<g:message code="memberHealth.contactoEmergencia.label" default="Contacto Emergencia" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="contactoEmergencia" required="" value="${memberHealthInstance?.contactoEmergencia}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberHealthInstance, field: 'member', 'error')} required">
	<label for="member">
		<g:message code="memberHealth.member.label" default="Member" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="member" name="member.id" from="${mygym.Member.list()}" optionKey="id"  optionValue="apellidoP" value="${memberHealthInstance?.member?.id}" class="many-to-one"/>

</div>

