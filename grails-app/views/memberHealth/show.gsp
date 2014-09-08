
<%@ page import="mygym.MemberHealth" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'memberHealth.label', default: 'MemberHealth')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-memberHealth" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-memberHealth" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list memberHealth">
			
				<g:if test="${memberHealthInstance?.tipoSangre}">
				<li class="fieldcontain">
					<span id="tipoSangre-label" class="property-label"><g:message code="memberHealth.tipoSangre.label" default="Tipo Sangre" /></span>
					
						<span class="property-value" aria-labelledby="tipoSangre-label"><g:fieldValue bean="${memberHealthInstance}" field="tipoSangre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberHealthInstance?.alergico}">
				<li class="fieldcontain">
					<span id="alergico-label" class="property-label"><g:message code="memberHealth.alergico.label" default="Alergico" /></span>
					
						<span class="property-value" aria-labelledby="alergico-label"><g:fieldValue bean="${memberHealthInstance}" field="alergico"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberHealthInstance?.operaciones}">
				<li class="fieldcontain">
					<span id="operaciones-label" class="property-label"><g:message code="memberHealth.operaciones.label" default="Operaciones" /></span>
					
						<span class="property-value" aria-labelledby="operaciones-label"><g:fieldValue bean="${memberHealthInstance}" field="operaciones"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberHealthInstance?.respiratorias}">
				<li class="fieldcontain">
					<span id="respiratorias-label" class="property-label"><g:message code="memberHealth.respiratorias.label" default="Respiratorias" /></span>
					
						<span class="property-value" aria-labelledby="respiratorias-label"><g:fieldValue bean="${memberHealthInstance}" field="respiratorias"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberHealthInstance?.cardiologia}">
				<li class="fieldcontain">
					<span id="cardiologia-label" class="property-label"><g:message code="memberHealth.cardiologia.label" default="Cardiologia" /></span>
					
						<span class="property-value" aria-labelledby="cardiologia-label"><g:fieldValue bean="${memberHealthInstance}" field="cardiologia"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberHealthInstance?.enfermedades}">
				<li class="fieldcontain">
					<span id="enfermedades-label" class="property-label"><g:message code="memberHealth.enfermedades.label" default="Enfermedades" /></span>
					
						<span class="property-value" aria-labelledby="enfermedades-label"><g:fieldValue bean="${memberHealthInstance}" field="enfermedades"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberHealthInstance?.medicado}">
				<li class="fieldcontain">
					<span id="medicado-label" class="property-label"><g:message code="memberHealth.medicado.label" default="Medicado" /></span>
					
						<span class="property-value" aria-labelledby="medicado-label"><g:fieldValue bean="${memberHealthInstance}" field="medicado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberHealthInstance?.contactoEmergencia}">
				<li class="fieldcontain">
					<span id="contactoEmergencia-label" class="property-label"><g:message code="memberHealth.contactoEmergencia.label" default="Contacto Emergencia" /></span>
					
						<span class="property-value" aria-labelledby="contactoEmergencia-label"><g:fieldValue bean="${memberHealthInstance}" field="contactoEmergencia"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberHealthInstance?.member}">
				<li class="fieldcontain">
					<span id="member-label" class="property-label"><g:message code="memberHealth.member.label" default="Member" /></span>
					
						<span class="property-value" aria-labelledby="member-label"><g:link controller="member" action="show" id="${memberHealthInstance?.member?.id}">${memberHealthInstance?.member?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:memberHealthInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${memberHealthInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
