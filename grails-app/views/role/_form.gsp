<%@ page import="restauraw.staff.Role" %>



<div class="form-group fieldcontain ${hasErrors(bean: roleInstance, field: 'authority', 'error')} required">
	<label class="col-sm-2 control-label" for="authority">
		<g:message code="role.authority.label" default="Authority" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:textField class="form-control" name="authority" required="" value="${roleInstance?.authority}"/>

    </div>
</div>

