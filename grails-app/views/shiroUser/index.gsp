
<%@ page import="restauraw.ShiroUser" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'shiroUser.label', default: 'ShiroUser')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav-divider" role="navigation">
				<a class="form-control" href="${createLink(uri: '/intern/')}"><span class="glyphicon glyphicon-home"></span> <g:message code="default.home.label"/></a>
				<g:link class="form-control" action="create"><span class="glyphicon glyphicon glyphicon-plus-sign"></span> <g:message code="default.new.label" args="[entityName]" /></g:link>
		</div>
		<div id="list-shiroUser" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <div class="table-responsive">
            <table class="table table-striped">
			<thead>
					<tr>
					
						<g:sortableColumn property="username" title="${message(code: 'shiroUser.username.label', default: 'Username')}" />
					
						<g:sortableColumn property="passwordHash" title="${message(code: 'shiroUser.passwordHash.label', default: 'Password Hash')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${shiroUserInstanceList}" status="i" var="shiroUserInstance">
					<tr >
					
						<td><g:link action="show" id="${shiroUserInstance.id}">${fieldValue(bean: shiroUserInstance, field: "username")}</g:link></td>
					
						<td>${fieldValue(bean: shiroUserInstance, field: "passwordHash")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
            </div>
			<div class="pagination">
				<g:paginate total="${shiroUserInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
