
<%@ page import="restauraw.menu.Daily" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'daily.label', default: 'Daily')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav-divider" role="navigation">
				<a class="form-control" href="${createLink(uri: '/intern/')}"><span class="glyphicon glyphicon-home"></span> <g:message code="default.home.label"/></a>
				<g:link class="form-control" action="create"><span class="glyphicon glyphicon glyphicon-plus-sign"></span> <g:message code="default.new.label" args="[entityName]" /></g:link>
		</div>
		<div id="list-daily" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <div class="table-responsive">
            <table class="table table-striped">
			<thead>
					<tr>
					
						<th><g:message code="daily.day.label" default="Day" /></th>
					
						<g:sortableColumn property="info" title="${message(code: 'daily.info.label', default: 'Info')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'daily.name.label', default: 'Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${dailyInstanceList}" status="i" var="dailyInstance">
					<tr >
					
						<td><g:link action="show" id="${dailyInstance.id}">${fieldValue(bean: dailyInstance, field: "day")}</g:link></td>
					
						<td>${fieldValue(bean: dailyInstance, field: "info")}</td>
					
						<td>${fieldValue(bean: dailyInstance, field: "name")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
            </div>
			<div class="pagination">
				<g:paginate total="${dailyInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
