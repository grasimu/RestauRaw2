
<%@ page import="restauraw.calendar.Calendar" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'calendar.label', default: 'Calendar')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav-divider" role="navigation">
				<a class="form-control" href="${createLink(uri: '/intern/')}"><span class="glyphicon glyphicon-home"></span> <g:message code="default.home.label"/></a>
				<g:link class="form-control" action="index"><span class="glyphicon glyphicon-list-alt"></span> <g:message code="default.list.label" args="[entityName]" /></g:link>
				<g:link class="form-control" action="create"><span class="glyphicon glyphicon glyphicon-plus-sign"> <g:message code="default.new.label" args="[entityName]" /></g:link>

		</div>
		<div id="show-calendar" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<ol class="property-list calendar">
			
				<g:if test="${calendarInstance?.year}">
				<li class="fieldcontain">
					<span id="year-label" class="property-label"><g:message code="calendar.year.label" default="Year" /></span>
					
						<span class="property-value" aria-labelledby="year-label"><g:fieldValue bean="${calendarInstance}" field="year"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${calendarInstance?.days}">
				<li class="fieldcontain">
					<span id="days-label" class="property-label"><g:message code="calendar.days.label" default="Days" /></span>
					
						<g:each in="${calendarInstance.days}" var="d">
						<span class="property-value" aria-labelledby="days-label"><g:link controller="day" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:calendarInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons pull-right">
					<g:link class="edit btn btn-warning" action="edit" resource="${calendarInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
