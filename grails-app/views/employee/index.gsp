
<%@ page import="restauraw.staff.Employee" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'employee.label', default: 'Employee')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav-divider" role="navigation">
				<a class="form-control" href="${createLink(uri: '/intern/')}"><span class="glyphicon glyphicon-home"></span> <g:message code="default.home.label"/></a>
				<g:link class="form-control" action="create"><span class="glyphicon glyphicon glyphicon-plus-sign"></span> <g:message code="default.new.label" args="[entityName]" /></g:link>
		</div>
		<div id="list-employee" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <div class="table-responsive">
            <table class="table table-striped">
			<thead>
					<tr>
					
						<g:sortableColumn property="username" title="${message(code: 'employee.username.label', default: 'Username')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'employee.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="job" title="${message(code: 'employee.job.label', default: 'Job')}" />
					
						<g:sortableColumn property="passwordHash" title="${message(code: 'employee.passwordHash.label', default: 'Password Hash')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${employeeInstanceList}" status="i" var="employeeInstance">
					<tr >
					
						<td><g:link action="show" id="${employeeInstance.id}">${fieldValue(bean: employeeInstance, field: "username")}</g:link></td>
					
						<td>${fieldValue(bean: employeeInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: employeeInstance, field: "job")}</td>
					
						<td>${fieldValue(bean: employeeInstance, field: "passwordHash")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
            </div>
			<div class="pagination">
				<g:paginate total="${employeeInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
