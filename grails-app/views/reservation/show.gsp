
<%@ page import="restauraw.calendar.Reservation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'reservation.label', default: 'Reservation')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav-divider" role="navigation">
				<a class="form-control" href="${createLink(uri: '/intern/')}"><span class="glyphicon glyphicon-home"></span> <g:message code="default.home.label"/></a>
				<g:link class="form-control" action="index"><span class="glyphicon glyphicon-list-alt"></span> <g:message code="default.list.label" args="[entityName]" /></g:link>
				<g:link class="form-control" action="create"><span class="glyphicon glyphicon glyphicon-plus-sign"> <g:message code="default.new.label" args="[entityName]" /></g:link>

		</div>
		<div id="show-reservation" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<ol class="property-list reservation">
			
				<g:if test="${reservationInstance?.table}">
				<li class="fieldcontain">
					<span id="table-label" class="property-label"><g:message code="reservation.table.label" default="Table" /></span>
					
						<span class="property-value" aria-labelledby="table-label"><g:fieldValue bean="${reservationInstance}" field="table"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reservationInstance?.day}">
				<li class="fieldcontain">
					<span id="day-label" class="property-label"><g:message code="reservation.day.label" default="Day" /></span>
					
						<span class="property-value" aria-labelledby="day-label"><g:link controller="day" action="show" id="${reservationInstance?.day?.id}">${reservationInstance?.day?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${reservationInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="reservation.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${reservationInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reservationInstance?.phonenumber}">
				<li class="fieldcontain">
					<span id="phonenumber-label" class="property-label"><g:message code="reservation.phonenumber.label" default="Phonenumber" /></span>
					
						<span class="property-value" aria-labelledby="phonenumber-label"><g:fieldValue bean="${reservationInstance}" field="phonenumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reservationInstance?.time}">
				<li class="fieldcontain">
					<span id="time-label" class="property-label"><g:message code="reservation.time.label" default="Time" /></span>
					
						<span class="property-value" aria-labelledby="time-label"><g:fieldValue bean="${reservationInstance}" field="time"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:reservationInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons pull-right">
					<g:link class="edit btn btn-warning" action="edit" resource="${reservationInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
