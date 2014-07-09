
<%@ page import="restauraw.menu.Category" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'category.label', default: 'Category')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav-divider" role="navigation">
				<a class="form-control" href="${createLink(uri: '/intern/')}"><span class="glyphicon glyphicon-home"></span> <g:message code="default.home.label"/></a>
				<g:link class="form-control" action="index"><span class="glyphicon glyphicon-list-alt"></span> <g:message code="default.list.label" args="[entityName]" /></g:link>
				<g:link class="form-control" action="create"><span class="glyphicon glyphicon glyphicon-plus-sign"> <g:message code="default.new.label" args="[entityName]" /></g:link>

		</div>
		<div id="show-category" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<ol class="property-list category">
			
				<g:if test="${categoryInstance?.info}">
				<li class="fieldcontain">
					<span id="info-label" class="property-label"><g:message code="category.info.label" default="Info" /></span>
					
						<span class="property-value" aria-labelledby="info-label"><g:fieldValue bean="${categoryInstance}" field="info"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${categoryInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="category.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${categoryInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${categoryInstance?.sets}">
				<li class="fieldcontain">
					<span id="sets-label" class="property-label"><g:message code="category.sets.label" default="Sets" /></span>
					
						<g:each in="${categoryInstance.sets}" var="s">
						<span class="property-value" aria-labelledby="sets-label"><g:link controller="setMeal" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:categoryInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons pull-right">
					<g:link class="edit btn btn-warning" action="edit" resource="${categoryInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
