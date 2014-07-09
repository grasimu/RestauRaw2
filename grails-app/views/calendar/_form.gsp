<%@ page import="restauraw.calendar.Calendar" %>



<div class="form-group fieldcontain ${hasErrors(bean: calendarInstance, field: 'year', 'error')} required">
	<label class="col-sm-2 control-label" for="year">
		<g:message code="calendar.year.label" default="Year" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:field name="year" type="number" min="2000" max="3000" value="${calendarInstance.year}" required=""/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: calendarInstance, field: 'days', 'error')} ">
	<label class="col-sm-2 control-label" for="days">
		<g:message code="calendar.days.label" default="Days" />
		
	</label>
    <div class="col-sm-10">
        
<ul class="one-to-many">
<g:each in="${calendarInstance?.days?}" var="d">
    <li><g:link controller="day" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="day" action="create" params="['calendar.id': calendarInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'day.label', default: 'Day')])}</g:link>
</li>
</ul>


    </div>
</div>

