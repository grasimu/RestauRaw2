
<%@ page import="restauraw.calendar.Event" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'event.label', default: 'Event')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav-divider" role="navigation">
				<a class="form-control" href="${createLink(uri: '/intern/')}"><span class="glyphicon glyphicon-home"></span> <g:message code="default.home.label"/></a>
				<g:link class="form-control" action="create"><span class="glyphicon glyphicon glyphicon-plus-sign"></span> <g:message code="default.new.label" args="[entityName]" /></g:link>
		</div>
		<div id="list-event" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <div class="table-responsive">
            <table class="table table-striped">
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'event.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="info" title="${message(code: 'event.info.label', default: 'Info')}" />
					
						<g:sortableColumn property="starttime" title="${message(code: 'event.starttime.label', default: 'Starttime')}" />
					
						<g:sortableColumn property="duration" title="${message(code: 'event.duration.label', default: 'Duration')}" />
					
						<th><g:message code="event.day.label" default="Day" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${eventInstanceList}" status="i" var="eventInstance">
					<tr >
					
						<td><g:link action="show" id="${eventInstance.id}">${fieldValue(bean: eventInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: eventInstance, field: "info")}</td>
					
						<td>${fieldValue(bean: eventInstance, field: "starttime")}</td>
					
						<td>${fieldValue(bean: eventInstance, field: "duration")}</td>
					
						<td>${fieldValue(bean: eventInstance, field: "day")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
            </div>
			<div class="pagination">
				<g:paginate total="${eventInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
