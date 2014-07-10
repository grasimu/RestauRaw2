
<%@ page import="restauraw.menu.Category" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'category.label', default: 'Category')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav-divider" role="navigation">
				<a class="form-control" href="${createLink(uri: '/intern/')}"><span class="glyphicon glyphicon-home"></span> <g:message code="default.home.label"/></a>
				<g:link class="form-control" action="create"><span class="glyphicon glyphicon glyphicon-plus-sign"></span> <g:message code="default.new.label" args="[entityName]" /></g:link>
		</div>
		<div id="list-category" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <div class="table-responsive">
            <table class="table table-striped">
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'category.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="info" title="${message(code: 'category.info.label', default: 'Info')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${categoryInstanceList}" status="i" var="categoryInstance">
					<tr >
					
						<td><g:link action="show" id="${categoryInstance.id}">${fieldValue(bean: categoryInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: categoryInstance, field: "info")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
            </div>
			<div class="pagination">
				<g:paginate total="${categoryInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
