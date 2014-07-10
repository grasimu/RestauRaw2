<%@ page import="restauraw.menu.SetMeal" %>



<div class="form-group fieldcontain ${hasErrors(bean: setMealInstance, field: 'name', 'error')} required">
	<label class="col-sm-2 control-label" for="name">
		<g:message code="setMeal.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:textField class="form-control" name="name" required="" value="${setMealInstance?.name}"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: setMealInstance, field: 'dishes', 'error')} ">
	<label class="col-sm-2 control-label" for="dishes">
		<g:message code="setMeal.dishes.label" default="Dishes" />
		
	</label>
    <div class="col-sm-10">
        <g:select name="dishes" from="${restauraw.menu.Dish.list()}" multiple="multiple" optionKey="id" size="5" value="${setMealInstance?.dishes*.id}" class="many-to-many form-control"/>

    </div>
</div>

