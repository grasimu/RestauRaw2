
<%@ page import="restauraw.menu.Dish" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'dish.label', default: 'Dish')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav-divider" role="navigation">
				<a class="form-control" href="${createLink(uri: '/intern/')}"><span class="glyphicon glyphicon-home"></span> <g:message code="default.home.label"/></a>
				<g:link class="form-control" action="create"><span class="glyphicon glyphicon glyphicon-plus-sign"></span> <g:message code="default.new.label" args="[entityName]" /></g:link>
		</div>
		<div id="list-dish" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <div class="table-responsive">
            <table class="table table-striped">
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'dish.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="ingredients" title="${message(code: 'dish.ingredients.label', default: 'Ingredients')}" />
					
						<g:sortableColumn property="price" title="${message(code: 'dish.price.label', default: 'Price')}" />
					
						<g:sortableColumn property="imgUri" title="${message(code: 'dish.imgUri.label', default: 'Img Uri')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${dishInstanceList}" status="i" var="dishInstance">
					<tr >
					
						<td><g:link action="show" id="${dishInstance.id}">${fieldValue(bean: dishInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: dishInstance, field: "ingredients")}</td>
					
						<td>${fieldValue(bean: dishInstance, field: "price")}</td>
					
						<td>${fieldValue(bean: dishInstance, field: "imgUri")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
            </div>
			<div class="pagination">
				<g:paginate total="${dishInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
