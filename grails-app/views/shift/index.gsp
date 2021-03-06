
<%@ page import="restauraw.calendar.Shift" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'shift.label', default: 'Shift')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav-divider" role="navigation">
				<a class="form-control" href="${createLink(uri: '/intern/')}"><span class="glyphicon glyphicon-home"></span> <g:message code="default.home.label"/></a>
				<g:link class="form-control" action="create"><span class="glyphicon glyphicon glyphicon-plus-sign"></span> <g:message code="default.new.label" args="[entityName]" /></g:link>
		</div>
		<div id="list-shift" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <div class="table-responsive">
            <table class="table table-striped">
			<thead>
					<tr>
					
						<th><g:message code="shift.day.label" default="Day" /></th>
					
						<g:sortableColumn property="shiftTime" title="${message(code: 'shift.shiftTime.label', default: 'Shift Time')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${shiftInstanceList}" status="i" var="shiftInstance">
					<tr >
					
						<td><g:link action="show" id="${shiftInstance.id}">${fieldValue(bean: shiftInstance, field: "day")}</g:link></td>
					
						<td>${fieldValue(bean: shiftInstance, field: "shiftTime")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
            </div>
			<div class="pagination">
				<g:paginate total="${shiftInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
