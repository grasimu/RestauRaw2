
<%@ page import="restauraw.calendar.Shift" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'shift.label', default: 'Shift')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav-divider" role="navigation">
				<a class="form-control" href="${createLink(uri: '/intern/')}"><span class="glyphicon glyphicon-home"></span> <g:message code="default.home.label"/></a>
				<g:link class="form-control" action="index"><span class="glyphicon glyphicon-list-alt"></span> <g:message code="default.list.label" args="[entityName]" /></g:link>
				<g:link class="form-control" action="create"><span class="glyphicon glyphicon glyphicon-plus-sign"> <g:message code="default.new.label" args="[entityName]" /></g:link>

		</div>
		<div id="show-shift" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<ol class="property-list shift">
			
				<g:if test="${shiftInstance?.day}">
				<li class="fieldcontain">
					<span id="day-label" class="property-label"><g:message code="shift.day.label" default="Day" /></span>
					
						<span class="property-value" aria-labelledby="day-label"><g:link controller="day" action="show" id="${shiftInstance?.day?.id}">${shiftInstance?.day?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${shiftInstance?.shiftTime}">
				<li class="fieldcontain">
					<span id="shiftTime-label" class="property-label"><g:message code="shift.shiftTime.label" default="Shift Time" /></span>
					
						<span class="property-value" aria-labelledby="shiftTime-label"><g:fieldValue bean="${shiftInstance}" field="shiftTime"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:shiftInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons pull-right">
					<g:link class="edit btn btn-warning" action="edit" resource="${shiftInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
