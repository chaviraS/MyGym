
<%@ page import="mygym.Member" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'member.label', default: 'Member')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-member" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-member" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="noSocio" title="${message(code: 'member.noSocio.label', default: 'No Socio')}" />
					
						<g:sortableColumn property="nombre" title="${message(code: 'member.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="apellidoP" title="${message(code: 'member.apellidoP.label', default: 'Apellido P')}" />
					
						<g:sortableColumn property="apellidoM" title="${message(code: 'member.apellidoM.label', default: 'Apellido M')}" />
					
						<g:sortableColumn property="sexo" title="${message(code: 'member.sexo.label', default: 'Sexo')}" />
					
						<g:sortableColumn property="telefono" title="${message(code: 'member.telefono.label', default: 'Telefono')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${memberInstanceList}" status="i" var="memberInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${memberInstance.id}">${fieldValue(bean: memberInstance, field: "noSocio")}</g:link></td>
					
						<td>${fieldValue(bean: memberInstance, field: "nombre")}</td>
					
						<td>${fieldValue(bean: memberInstance, field: "apellidoP")}</td>
					
						<td>${fieldValue(bean: memberInstance, field: "apellidoM")}</td>
					
						<td>${fieldValue(bean: memberInstance, field: "sexo")}</td>
					
						<td>${fieldValue(bean: memberInstance, field: "telefono")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${memberInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
