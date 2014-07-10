<%@ page import="restauraw.staff.Employee" %>



<div class="form-group fieldcontain ${hasErrors(bean: employeeInstance, field: 'username', 'error')} required">
	<label class="col-sm-2 control-label" for="username">
		<g:message code="employee.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:textField class="form-control" name="username" required="" value="${employeeInstance?.username}"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: employeeInstance, field: 'name', 'error')} required">
	<label class="col-sm-2 control-label" for="name">
		<g:message code="employee.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:textField class="form-control" name="name" required="" value="${employeeInstance?.name}"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: employeeInstance, field: 'job', 'error')} required">
	<label class="col-sm-2 control-label" for="job">
		<g:message code="employee.job.label" default="Job" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:select class="form-control" name="job" from="${restauraw.staff.Employee$Job?.values()}" keys="${restauraw.staff.Employee$Job.values()*.name()}" required="" value="${employeeInstance?.job?.name()}" />

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: employeeInstance, field: 'passwordHash', 'error')} required">
	<label class="col-sm-2 control-label" for="passwordHash">
		<g:message code="employee.passwordHash.label" default="Password Hash" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:textField class="form-control" name="passwordHash" required="" value="${employeeInstance?.passwordHash}"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: employeeInstance, field: 'permissions', 'error')} ">
	<label class="col-sm-2 control-label" for="permissions">
		<g:message code="employee.permissions.label" default="Permissions" />
		
	</label>
    <div class="col-sm-10">
        

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: employeeInstance, field: 'roles', 'error')} ">
	<label class="col-sm-2 control-label" for="roles">
		<g:message code="employee.roles.label" default="Roles" />
		
	</label>
    <div class="col-sm-10">
        

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: employeeInstance, field: 'shifts', 'error')} ">
	<label class="col-sm-2 control-label" for="shifts">
		<g:message code="employee.shifts.label" default="Shifts" />
		
	</label>
    <div class="col-sm-10">
        <g:select name="shifts" from="${restauraw.calendar.Shift.list()}" multiple="multiple" optionKey="id" size="5" value="${employeeInstance?.shifts*.id}" class="many-to-many form-control"/>

    </div>
</div>

