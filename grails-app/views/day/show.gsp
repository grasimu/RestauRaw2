
<%@ page import="restauraw.calendar.Day" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'day.label', default: 'Day')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav-divider" role="navigation">
				<a class="form-control" href="${createLink(uri: '/intern/')}"><span class="glyphicon glyphicon-home"></span> <g:message code="default.home.label"/></a>
				<g:link class="form-control" action="index"><span class="glyphicon glyphicon-list-alt"></span> <g:message code="default.list.label" args="[entityName]" /></g:link>
				<g:link class="form-control" action="create"><span class="glyphicon glyphicon glyphicon-plus-sign"> <g:message code="default.new.label" args="[entityName]" /></g:link>

		</div>
		<div id="show-day" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<ol class="property-list day">
			
				<g:if test="${dayInstance?.reservations}">
				<li class="fieldcontain">
					<span id="reservations-label" class="property-label"><g:message code="day.reservations.label" default="Reservations" /></span>
					
						<g:each in="${dayInstance.reservations}" var="r">
						<span class="property-value" aria-labelledby="reservations-label"><g:link controller="reservation" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${dayInstance?.daily}">
				<li class="fieldcontain">
					<span id="daily-label" class="property-label"><g:message code="day.daily.label" default="Daily" /></span>
					
						<span class="property-value" aria-labelledby="daily-label"><g:link controller="daily" action="show" id="${dayInstance?.daily?.id}">${dayInstance?.daily?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${dayInstance?.events}">
				<li class="fieldcontain">
					<span id="events-label" class="property-label"><g:message code="day.events.label" default="Events" /></span>
					
						<g:each in="${dayInstance.events}" var="e">
						<span class="property-value" aria-labelledby="events-label"><g:link controller="event" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${dayInstance?.shifts}">
				<li class="fieldcontain">
					<span id="shifts-label" class="property-label"><g:message code="day.shifts.label" default="Shifts" /></span>
					
						<g:each in="${dayInstance.shifts}" var="s">
						<span class="property-value" aria-labelledby="shifts-label"><g:link controller="shift" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${dayInstance?.calendar}">
				<li class="fieldcontain">
					<span id="calendar-label" class="property-label"><g:message code="day.calendar.label" default="Calendar" /></span>
					
						<span class="property-value" aria-labelledby="calendar-label"><g:link controller="calendar" action="show" id="${dayInstance?.calendar?.id}">${dayInstance?.calendar?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${dayInstance?.date}">
				<li class="fieldcontain">
					<span id="date-label" class="property-label"><g:message code="day.date.label" default="Date" /></span>
					
						<span class="property-value" aria-labelledby="date-label"><g:formatDate date="${dayInstance?.date}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:dayInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons pull-right">
					<g:link class="edit btn btn-warning" action="edit" resource="${dayInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
