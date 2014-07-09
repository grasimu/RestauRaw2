<%@ page import="restauraw.staff.UserRole" %>



<div class="form-group fieldcontain ${hasErrors(bean: userRoleInstance, field: 'role', 'error')} required">
	<label class="col-sm-2 control-label" for="role">
		<g:message code="userRole.role.label" default="Role" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:select id="role" name="role.id" from="${restauraw.staff.Role.list()}" optionKey="id" required="" value="${userRoleInstance?.role?.id}" class="many-to-one form-control"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: userRoleInstance, field: 'user', 'error')} required">
	<label class="col-sm-2 control-label" for="user">
		<g:message code="userRole.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:select id="user" name="user.id" from="${restauraw.staff.User.list()}" optionKey="id" required="" value="${userRoleInstance?.user?.id}" class="many-to-one form-control"/>

    </div>
</div>

