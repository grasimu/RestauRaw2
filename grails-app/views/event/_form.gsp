<%@ page import="restauraw.calendar.Event" %>



<div class="form-group fieldcontain ${hasErrors(bean: eventInstance, field: 'name', 'error')} required">
	<label class="col-sm-2 control-label" for="name">
		<g:message code="event.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:textField class="form-control" name="name" required="" value="${eventInstance?.name}"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: eventInstance, field: 'info', 'error')} required">
	<label class="col-sm-2 control-label" for="info">
		<g:message code="event.info.label" default="Info" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:textField class="form-control" name="info" required="" value="${eventInstance?.info}"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: eventInstance, field: 'starttime', 'error')} required">
	<label class="col-sm-2 control-label" for="starttime">
		<g:message code="event.starttime.label" default="Starttime" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:textField class="form-control" name="starttime" required="" value="${eventInstance?.starttime}"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: eventInstance, field: 'duration', 'error')} required">
	<label class="col-sm-2 control-label" for="duration">
		<g:message code="event.duration.label" default="Duration" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:field name="duration" type="number" min="0" max="86400" value="${eventInstance.duration}" required=""/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: eventInstance, field: 'day', 'error')} required">
	<label class="col-sm-2 control-label" for="day">
		<g:message code="event.day.label" default="Day" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:select id="day" name="day.id" from="${restauraw.calendar.Day.list()}" optionKey="id" required="" value="${eventInstance?.day?.id}" class="many-to-one form-control"/>

    </div>
</div>

