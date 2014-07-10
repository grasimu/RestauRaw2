
<%@ page import="restauraw.menu.Dish" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'dish.label', default: 'Dish')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav-divider" role="navigation">
				<a class="form-control" href="${createLink(uri: '/intern/')}"><span class="glyphicon glyphicon-home"></span> <g:message code="default.home.label"/></a>
				<g:link class="form-control" action="index"><span class="glyphicon glyphicon-list-alt"></span> <g:message code="default.list.label" args="[entityName]" /></g:link>
				<g:link class="form-control" action="create"><span class="glyphicon glyphicon glyphicon-plus-sign"> <g:message code="default.new.label" args="[entityName]" /></g:link>

		</div>
		<div id="show-dish" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<ol class="property-list dish">
			
				<g:if test="${dishInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="dish.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${dishInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${dishInstance?.ingredients}">
				<li class="fieldcontain">
					<span id="ingredients-label" class="property-label"><g:message code="dish.ingredients.label" default="Ingredients" /></span>
					
						<span class="property-value" aria-labelledby="ingredients-label"><g:fieldValue bean="${dishInstance}" field="ingredients"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${dishInstance?.price}">
				<li class="fieldcontain">
					<span id="price-label" class="property-label"><g:message code="dish.price.label" default="Price" /></span>
					
						<span class="property-value" aria-labelledby="price-label"><g:fieldValue bean="${dishInstance}" field="price"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${dishInstance?.imgUri}">
				<li class="fieldcontain">
					<span id="imgUri-label" class="property-label"><g:message code="dish.imgUri.label" default="Img Uri" /></span>
					
						<span class="property-value" aria-labelledby="imgUri-label"><g:fieldValue bean="${dishInstance}" field="imgUri"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${dishInstance?.set}">
				<li class="fieldcontain">
					<span id="set-label" class="property-label"><g:message code="dish.set.label" default="Set" /></span>
					
						<g:each in="${dishInstance.set}" var="s">
						<span class="property-value" aria-labelledby="set-label"><g:link controller="setMeal" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:dishInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons pull-right">
					<g:link class="edit btn btn-warning" action="edit" resource="${dishInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
