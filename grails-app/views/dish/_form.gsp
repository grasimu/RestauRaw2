<%@ page import="restauraw.menu.Dish" %>



<div class="form-group fieldcontain ${hasErrors(bean: dishInstance, field: 'price', 'error')} required">
	<label class="col-sm-2 control-label" for="price">
		<g:message code="dish.price.label" default="Price" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:field name="price" value="${fieldValue(bean: dishInstance, field: 'price')}" required=""/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: dishInstance, field: 'ingredients', 'error')} required">
	<label class="col-sm-2 control-label" for="ingredients">
		<g:message code="dish.ingredients.label" default="Ingredients" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:textField class="form-control" name="ingredients" required="" value="${dishInstance?.ingredients}"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: dishInstance, field: 'name', 'error')} required">
	<label class="col-sm-2 control-label" for="name">
		<g:message code="dish.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:textField class="form-control" name="name" required="" value="${dishInstance?.name}"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: dishInstance, field: 'set', 'error')} required">
	<label class="col-sm-2 control-label" for="set">
		<g:message code="dish.set.label" default="Set" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:select id="set" name="set.id" from="${restauraw.menu.SetMeal.list()}" optionKey="id" required="" value="${dishInstance?.set?.id}" class="many-to-one form-control"/>

    </div>
</div>

