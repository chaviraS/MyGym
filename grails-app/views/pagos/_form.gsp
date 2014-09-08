<%@ page import="mygym.Pagos" %>



<div class="fieldcontain ${hasErrors(bean: pagosInstance, field: 'concepto', 'error')} required">
	<label for="concepto">
		<g:message code="pagos.concepto.label" default="Concepto" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="concepto" from="${pagosInstance.constraints.concepto.inList}" required="" value="${pagosInstance?.concepto}" valueMessagePrefix="pagos.concepto"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pagosInstance, field: 'monto', 'error')} required">
	<label for="monto">
		<g:message code="pagos.monto.label" default="Monto" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="monto" type="number" value="${pagosInstance.monto}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: pagosInstance, field: 'member', 'error')} required">
	<label for="member">
		<g:message code="pagos.member.label" default="Member" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="member" name="member.id" from="${mygym.Member.list()}" optionKey="id" required="" value="${pagosInstance?.member?.id}" class="many-to-one"/>

</div>

