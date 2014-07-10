<%@ page import="restauraw.menu.Menu" %>



<div class="form-group fieldcontain ${hasErrors(bean: menuInstance, field: 'name', 'error')} required">
	<label class="col-sm-2 control-label" for="name">
		<g:message code="menu.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:textField class="form-control" name="name" required="" value="${menuInstance?.name}"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: menuInstance, field: 'info', 'error')} required">
	<label class="col-sm-2 control-label" for="info">
		<g:message code="menu.info.label" default="Info" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:textField class="form-control" name="info" required="" value="${menuInstance?.info}"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: menuInstance, field: 'categorys', 'error')} ">
	<label class="col-sm-2 control-label" for="categorys">
		<g:message code="menu.categorys.label" default="Categorys" />
		
	</label>
    <div class="col-sm-10">
        <g:select name="categorys" from="${restauraw.menu.Category.list()}" multiple="multiple" optionKey="id" size="5" value="${menuInstance?.categorys*.id}" class="many-to-many form-control"/>

    </div>
</div>

