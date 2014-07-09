<%@ page import="restauraw.calendar.Shift" %>



<div class="form-group fieldcontain ${hasErrors(bean: shiftInstance, field: 'day', 'error')} required">
	<label class="col-sm-2 control-label" for="day">
		<g:message code="shift.day.label" default="Day" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:select id="day" name="day.id" from="${restauraw.calendar.Day.list()}" optionKey="id" required="" value="${shiftInstance?.day?.id}" class="many-to-one form-control"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: shiftInstance, field: 'shiftTime', 'error')} required">
	<label class="col-sm-2 control-label" for="shiftTime">
		<g:message code="shift.shiftTime.label" default="Shift Time" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:select class="form-control" name="shiftTime" from="${restauraw.calendar.Shift$ShiftTime?.values()}" keys="${restauraw.calendar.Shift$ShiftTime.values()*.name()}" required="" value="${shiftInstance?.shiftTime?.name()}" />

    </div>
</div>

