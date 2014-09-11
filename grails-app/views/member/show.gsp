
<%@ page import="mygym.Member" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'member.label', default: 'Member')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-member" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-member" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list member">
			
				<g:if test="${memberInstance?.noSocio}">
				<li class="fieldcontain">
					<span id="noSocio-label" class="property-label"><g:message code="member.noSocio.label" default="No Socio" /></span>
					
						<span class="property-value" aria-labelledby="noSocio-label"><g:fieldValue bean="${memberInstance}" field="noSocio"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="member.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${memberInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.apellidoP}">
				<li class="fieldcontain">
					<span id="apellidoP-label" class="property-label"><g:message code="member.apellidoP.label" default="Apellido P" /></span>
					
						<span class="property-value" aria-labelledby="apellidoP-label"><g:fieldValue bean="${memberInstance}" field="apellidoP"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.apellidoM}">
				<li class="fieldcontain">
					<span id="apellidoM-label" class="property-label"><g:message code="member.apellidoM.label" default="Apellido M" /></span>
					
						<span class="property-value" aria-labelledby="apellidoM-label"><g:fieldValue bean="${memberInstance}" field="apellidoM"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.sexo}">
				<li class="fieldcontain">
					<span id="sexo-label" class="property-label"><g:message code="member.sexo.label" default="Sexo" /></span>
					
						<span class="property-value" aria-labelledby="sexo-label"><g:fieldValue bean="${memberInstance}" field="sexo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.telefono}">
				<li class="fieldcontain">
					<span id="telefono-label" class="property-label"><g:message code="member.telefono.label" default="Telefono" /></span>
					
						<span class="property-value" aria-labelledby="telefono-label"><g:fieldValue bean="${memberInstance}" field="telefono"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.celular}">
				<li class="fieldcontain">
					<span id="celular-label" class="property-label"><g:message code="member.celular.label" default="Celular" /></span>
					
						<span class="property-value" aria-labelledby="celular-label"><g:fieldValue bean="${memberInstance}" field="celular"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.direccion}">
				<li class="fieldcontain">
					<span id="direccion-label" class="property-label"><g:message code="member.direccion.label" default="Direccion" /></span>
					
						<span class="property-value" aria-labelledby="direccion-label"><g:fieldValue bean="${memberInstance}" field="direccion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="member.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${memberInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.cumpleanos}">
				<li class="fieldcontain">
					<span id="cumpleanos-label" class="property-label"><g:message code="member.cumpleanos.label" default="Cumpleanos" /></span>
					
						<span class="property-value" aria-labelledby="cumpleanos-label"><g:fieldValue bean="${memberInstance}" field="cumpleanos"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.pagos}">
				<li class="fieldcontain">
					<span id="pagos-label" class="property-label"><g:message code="member.pagos.label" default="Pagos" /></span>
					
						<g:each in="${memberInstance.pagos}" var="p">
						<span class="property-value" aria-labelledby="pagos-label"><g:link controller="pagos" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:memberInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${memberInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
