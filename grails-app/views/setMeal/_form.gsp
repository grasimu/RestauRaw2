<%@ page import="restauraw.menu.SetMeal" %>



<div class="form-group fieldcontain ${hasErrors(bean: setMealInstance, field: 'dishes', 'error')} ">
	<label class="col-sm-2 control-label" for="dishes">
		<g:message code="setMeal.dishes.label" default="Dishes" />
		
	</label>
    <div class="col-sm-10">
        
<ul class="one-to-many">
<g:each in="${setMealInstance?.dishes?}" var="d">
    <li><g:link controller="dish" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="dish" action="create" params="['setMeal.id': setMealInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'dish.label', default: 'Dish')])}</g:link>
</li>
</ul>


    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: setMealInstance, field: 'info', 'error')} required">
	<label class="col-sm-2 control-label" for="info">
		<g:message code="setMeal.info.label" default="Info" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:textField class="form-control" name="info" required="" value="${setMealInstance?.info}"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: setMealInstance, field: 'name', 'error')} required">
	<label class="col-sm-2 control-label" for="name">
		<g:message code="setMeal.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:textField class="form-control" name="name" required="" value="${setMealInstance?.name}"/>

    </div>
</div>

