
<%@ page import="mygym.Instructor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'instructor.label', default: 'Instructor')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-instructor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-instructor" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list instructor">
			
				<g:if test="${instructorInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="instructor.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${instructorInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${instructorInstance?.apellidoP}">
				<li class="fieldcontain">
					<span id="apellidoP-label" class="property-label"><g:message code="instructor.apellidoP.label" default="Apellido P" /></span>
					
						<span class="property-value" aria-labelledby="apellidoP-label"><g:fieldValue bean="${instructorInstance}" field="apellidoP"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${instructorInstance?.apellidoM}">
				<li class="fieldcontain">
					<span id="apellidoM-label" class="property-label"><g:message code="instructor.apellidoM.label" default="Apellido M" /></span>
					
						<span class="property-value" aria-labelledby="apellidoM-label"><g:fieldValue bean="${instructorInstance}" field="apellidoM"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${instructorInstance?.turno}">
				<li class="fieldcontain">
					<span id="turno-label" class="property-label"><g:message code="instructor.turno.label" default="Turno" /></span>
					
						<span class="property-value" aria-labelledby="turno-label"><g:fieldValue bean="${instructorInstance}" field="turno"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${instructorInstance?.member}">
				<li class="fieldcontain">
					<span id="member-label" class="property-label"><g:message code="instructor.member.label" default="Member" /></span>
					
						<g:each in="${instructorInstance.member}" var="m">
						<span class="property-value" aria-labelledby="member-label"><g:link controller="member" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:instructorInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${instructorInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
