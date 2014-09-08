
<%@ page import="mygym.MemberHealth" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'memberHealth.label', default: 'MemberHealth')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-memberHealth" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-memberHealth" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="tipoSangre" title="${message(code: 'memberHealth.tipoSangre.label', default: 'Tipo Sangre')}" />
					
						<g:sortableColumn property="alergico" title="${message(code: 'memberHealth.alergico.label', default: 'Alergico')}" />
					
						<g:sortableColumn property="operaciones" title="${message(code: 'memberHealth.operaciones.label', default: 'Operaciones')}" />
					
						<g:sortableColumn property="respiratorias" title="${message(code: 'memberHealth.respiratorias.label', default: 'Respiratorias')}" />
					
						<g:sortableColumn property="cardiologia" title="${message(code: 'memberHealth.cardiologia.label', default: 'Cardiologia')}" />
					
						<g:sortableColumn property="enfermedades" title="${message(code: 'memberHealth.enfermedades.label', default: 'Enfermedades')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${memberHealthInstanceList}" status="i" var="memberHealthInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${memberHealthInstance.id}">${fieldValue(bean: memberHealthInstance, field: "tipoSangre")}</g:link></td>
					
						<td>${fieldValue(bean: memberHealthInstance, field: "alergico")}</td>
					
						<td>${fieldValue(bean: memberHealthInstance, field: "operaciones")}</td>
					
						<td>${fieldValue(bean: memberHealthInstance, field: "respiratorias")}</td>
					
						<td>${fieldValue(bean: memberHealthInstance, field: "cardiologia")}</td>
					
						<td>${fieldValue(bean: memberHealthInstance, field: "enfermedades")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${memberHealthInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
