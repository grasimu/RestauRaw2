<%@ page import="restauraw.ShiroRole" %>



<div class="form-group fieldcontain ${hasErrors(bean: shiroRoleInstance, field: 'name', 'error')} required">
	<label class="col-sm-2 control-label" for="name">
		<g:message code="shiroRole.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:textField class="form-control" name="name" required="" value="${shiroRoleInstance?.name}"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: shiroRoleInstance, field: 'permissions', 'error')} ">
	<label class="col-sm-2 control-label" for="permissions">
		<g:message code="shiroRole.permissions.label" default="Permissions" />
		
	</label>
    <div class="col-sm-10">
        

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: shiroRoleInstance, field: 'users', 'error')} ">
	<label class="col-sm-2 control-label" for="users">
		<g:message code="shiroRole.users.label" default="Users" />
		
	</label>
    <div class="col-sm-10">
        

    </div>
</div>

