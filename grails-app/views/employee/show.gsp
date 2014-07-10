
<%@ page import="restauraw.staff.Employee" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'employee.label', default: 'Employee')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav-divider" role="navigation">
				<a class="form-control" href="${createLink(uri: '/intern/')}"><span class="glyphicon glyphicon-home"></span> <g:message code="default.home.label"/></a>
				<g:link class="form-control" action="index"><span class="glyphicon glyphicon-list-alt"></span> <g:message code="default.list.label" args="[entityName]" /></g:link>
				<g:link class="form-control" action="create"><span class="glyphicon glyphicon glyphicon-plus-sign"> <g:message code="default.new.label" args="[entityName]" /></g:link>

		</div>
		<div id="show-employee" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<ol class="property-list employee">
			
				<g:if test="${employeeInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="employee.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${employeeInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="employee.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${employeeInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.job}">
				<li class="fieldcontain">
					<span id="job-label" class="property-label"><g:message code="employee.job.label" default="Job" /></span>
					
						<span class="property-value" aria-labelledby="job-label"><g:fieldValue bean="${employeeInstance}" field="job"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.passwordHash}">
				<li class="fieldcontain">
					<span id="passwordHash-label" class="property-label"><g:message code="employee.passwordHash.label" default="Password Hash" /></span>
					
						<span class="property-value" aria-labelledby="passwordHash-label"><g:fieldValue bean="${employeeInstance}" field="passwordHash"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.permissions}">
				<li class="fieldcontain">
					<span id="permissions-label" class="property-label"><g:message code="employee.permissions.label" default="Permissions" /></span>
					
						<span class="property-value" aria-labelledby="permissions-label"><g:fieldValue bean="${employeeInstance}" field="permissions"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.roles}">
				<li class="fieldcontain">
					<span id="roles-label" class="property-label"><g:message code="employee.roles.label" default="Roles" /></span>
					
						<g:each in="${employeeInstance.roles}" var="r">
						<span class="property-value" aria-labelledby="roles-label"><g:link controller="shiroRole" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.shifts}">
				<li class="fieldcontain">
					<span id="shifts-label" class="property-label"><g:message code="employee.shifts.label" default="Shifts" /></span>
					
						<g:each in="${employeeInstance.shifts}" var="s">
						<span class="property-value" aria-labelledby="shifts-label"><g:link controller="shift" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:employeeInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons pull-right">
					<g:link class="edit btn btn-warning" action="edit" resource="${employeeInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
