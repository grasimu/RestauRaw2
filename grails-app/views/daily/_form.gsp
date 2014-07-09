<%@ page import="restauraw.menu.Daily" %>



<div class="form-group fieldcontain ${hasErrors(bean: dailyInstance, field: 'day', 'error')} required">
	<label class="col-sm-2 control-label" for="day">
		<g:message code="daily.day.label" default="Day" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:select id="day" name="day.id" from="${restauraw.calendar.Day.list()}" optionKey="id" required="" value="${dailyInstance?.day?.id}" class="many-to-one form-control"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: dailyInstance, field: 'info', 'error')} required">
	<label class="col-sm-2 control-label" for="info">
		<g:message code="daily.info.label" default="Info" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:textField class="form-control" name="info" required="" value="${dailyInstance?.info}"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: dailyInstance, field: 'name', 'error')} required">
	<label class="col-sm-2 control-label" for="name">
		<g:message code="daily.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:textField class="form-control" name="name" required="" value="${dailyInstance?.name}"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: dailyInstance, field: 'sets', 'error')} ">
	<label class="col-sm-2 control-label" for="sets">
		<g:message code="daily.sets.label" default="Sets" />
		
	</label>
    <div class="col-sm-10">
        <g:select name="sets" from="${restauraw.menu.SetMeal.list()}" multiple="multiple" optionKey="id" size="5" value="${dailyInstance?.sets*.id}" class="many-to-many form-control"/>

    </div>
</div>

