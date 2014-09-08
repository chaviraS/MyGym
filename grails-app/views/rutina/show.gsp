
<%@ page import="mygym.Rutina" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'rutina.label', default: 'Rutina')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-rutina" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-rutina" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list rutina">
			
				<g:if test="${rutinaInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="rutina.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${rutinaInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${rutinaInstance?.dias}">
				<li class="fieldcontain">
					<span id="dias-label" class="property-label"><g:message code="rutina.dias.label" default="Dias" /></span>
					
						<span class="property-value" aria-labelledby="dias-label"><g:fieldValue bean="${rutinaInstance}" field="dias"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${rutinaInstance?.duracion}">
				<li class="fieldcontain">
					<span id="duracion-label" class="property-label"><g:message code="rutina.duracion.label" default="Duracion" /></span>
					
						<span class="property-value" aria-labelledby="duracion-label"><g:fieldValue bean="${rutinaInstance}" field="duracion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${rutinaInstance?.grupomuscular}">
				<li class="fieldcontain">
					<span id="grupomuscular-label" class="property-label"><g:message code="rutina.grupomuscular.label" default="Grupomuscular" /></span>
					
						<span class="property-value" aria-labelledby="grupomuscular-label"><g:fieldValue bean="${rutinaInstance}" field="grupomuscular"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${rutinaInstance?.ejercicio}">
				<li class="fieldcontain">
					<span id="ejercicio-label" class="property-label"><g:message code="rutina.ejercicio.label" default="Ejercicio" /></span>
					
						<g:each in="${rutinaInstance.ejercicio}" var="e">
						<span class="property-value" aria-labelledby="ejercicio-label"><g:link controller="ejercicio" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${rutinaInstance?.member}">
				<li class="fieldcontain">
					<span id="member-label" class="property-label"><g:message code="rutina.member.label" default="Member" /></span>
					
						<span class="property-value" aria-labelledby="member-label"><g:link controller="member" action="show" id="${rutinaInstance?.member?.id}">${rutinaInstance?.member?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:rutinaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${rutinaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
