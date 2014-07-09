<%@ page import="restauraw.ShiroUser" %>



<div class="form-group fieldcontain ${hasErrors(bean: shiroUserInstance, field: 'username', 'error')} required">
	<label class="col-sm-2 control-label" for="username">
		<g:message code="shiroUser.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:textField class="form-control" name="username" required="" value="${shiroUserInstance?.username}"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: shiroUserInstance, field: 'passwordHash', 'error')} required">
	<label class="col-sm-2 control-label" for="passwordHash">
		<g:message code="shiroUser.passwordHash.label" default="Password Hash" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:textField class="form-control" name="passwordHash" required="" value="${shiroUserInstance?.passwordHash}"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: shiroUserInstance, field: 'permissions', 'error')} ">
	<label class="col-sm-2 control-label" for="permissions">
		<g:message code="shiroUser.permissions.label" default="Permissions" />
		
	</label>
    <div class="col-sm-10">
        

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: shiroUserInstance, field: 'roles', 'error')} ">
	<label class="col-sm-2 control-label" for="roles">
		<g:message code="shiroUser.roles.label" default="Roles" />
		
	</label>
    <div class="col-sm-10">
        <g:select name="roles" from="${restauraw.ShiroRole.list()}" multiple="multiple" optionKey="id" size="5" value="${shiroUserInstance?.roles*.id}" class="many-to-many form-control"/>

    </div>
</div>

