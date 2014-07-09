
<%@ page import="restauraw.calendar.Reservation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'reservation.label', default: 'Reservation')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav-divider" role="navigation">
				<a class="form-control" href="${createLink(uri: '/intern/')}"><span class="glyphicon glyphicon-home"></span> <g:message code="default.home.label"/></a>
				<g:link class="form-control" action="create"><span class="glyphicon glyphicon glyphicon-plus-sign"></span> <g:message code="default.new.label" args="[entityName]" /></g:link>
		</div>
		<div id="list-reservation" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <div class="table-responsive">
            <table class="table table-striped">
			<thead>
					<tr>
					
						<g:sortableColumn property="table" title="${message(code: 'reservation.table.label', default: 'Table')}" />
					
						<th><g:message code="reservation.day.label" default="Day" /></th>
					
						<g:sortableColumn property="name" title="${message(code: 'reservation.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="phonenumber" title="${message(code: 'reservation.phonenumber.label', default: 'Phonenumber')}" />
					
						<g:sortableColumn property="time" title="${message(code: 'reservation.time.label', default: 'Time')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${reservationInstanceList}" status="i" var="reservationInstance">
					<tr >
					
						<td><g:link action="show" id="${reservationInstance.id}">${fieldValue(bean: reservationInstance, field: "table")}</g:link></td>
					
						<td>${fieldValue(bean: reservationInstance, field: "day")}</td>
					
						<td>${fieldValue(bean: reservationInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: reservationInstance, field: "phonenumber")}</td>
					
						<td>${fieldValue(bean: reservationInstance, field: "time")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
            </div>
			<div class="pagination">
				<g:paginate total="${reservationInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
