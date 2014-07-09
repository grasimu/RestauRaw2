<%@ page import="restauraw.menu.Category" %>



<div class="form-group fieldcontain ${hasErrors(bean: categoryInstance, field: 'info', 'error')} required">
	<label class="col-sm-2 control-label" for="info">
		<g:message code="category.info.label" default="Info" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:textField class="form-control" name="info" required="" value="${categoryInstance?.info}"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: categoryInstance, field: 'name', 'error')} required">
	<label class="col-sm-2 control-label" for="name">
		<g:message code="category.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:textField class="form-control" name="name" required="" value="${categoryInstance?.name}"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: categoryInstance, field: 'sets', 'error')} ">
	<label class="col-sm-2 control-label" for="sets">
		<g:message code="category.sets.label" default="Sets" />
		
	</label>
    <div class="col-sm-10">
        <g:select name="sets" from="${restauraw.menu.SetMeal.list()}" multiple="multiple" optionKey="id" size="5" value="${categoryInstance?.sets*.id}" class="many-to-many form-control"/>

    </div>
</div>

