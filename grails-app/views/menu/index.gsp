
<%@ page import="restauraw.menu.Menu" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'menu.label', default: 'Menu')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav-divider" role="navigation">
				<a class="form-control" href="${createLink(uri: '/intern/')}"><span class="glyphicon glyphicon-home"></span> <g:message code="default.home.label"/></a>
				<g:link class="form-control" action="create"><span class="glyphicon glyphicon glyphicon-plus-sign"></span> <g:message code="default.new.label" args="[entityName]" /></g:link>
		</div>
		<div id="list-menu" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <div class="table-responsive">
            <table class="table table-striped">
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'menu.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="info" title="${message(code: 'menu.info.label', default: 'Info')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${menuInstanceList}" status="i" var="menuInstance">
					<tr >
					
						<td><g:link action="show" id="${menuInstance.id}">${fieldValue(bean: menuInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: menuInstance, field: "info")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
            </div>
			<div class="pagination">
				<g:paginate total="${menuInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
