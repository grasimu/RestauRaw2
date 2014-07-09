
<%@ page import="restauraw.calendar.Day" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'day.label', default: 'Day')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav-divider" role="navigation">
				<a class="form-control" href="${createLink(uri: '/intern/')}"><span class="glyphicon glyphicon-home"></span> <g:message code="default.home.label"/></a>
				<g:link class="form-control" action="create"><span class="glyphicon glyphicon glyphicon-plus-sign"></span> <g:message code="default.new.label" args="[entityName]" /></g:link>
		</div>
		<div id="list-day" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <div class="table-responsive">
            <table class="table table-striped">
			<thead>
					<tr>
					
						<th><g:message code="day.daily.label" default="Daily" /></th>
					
						<th><g:message code="day.calendar.label" default="Calendar" /></th>
					
						<g:sortableColumn property="date" title="${message(code: 'day.date.label', default: 'Date')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${dayInstanceList}" status="i" var="dayInstance">
					<tr >
					
						<td><g:link action="show" id="${dayInstance.id}">${fieldValue(bean: dayInstance, field: "daily")}</g:link></td>
					
						<td>${fieldValue(bean: dayInstance, field: "calendar")}</td>
					
						<td><g:formatDate date="${dayInstance.date}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
            </div>
			<div class="pagination">
				<g:paginate total="${dayInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
