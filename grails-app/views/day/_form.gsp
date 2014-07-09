<%@ page import="restauraw.calendar.Day" %>



<div class="form-group fieldcontain ${hasErrors(bean: dayInstance, field: 'reservations', 'error')} ">
	<label class="col-sm-2 control-label" for="reservations">
		<g:message code="day.reservations.label" default="Reservations" />
		
	</label>
    <div class="col-sm-10">
        
<ul class="one-to-many">
<g:each in="${dayInstance?.reservations?}" var="r">
    <li><g:link controller="reservation" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="reservation" action="create" params="['day.id': dayInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'reservation.label', default: 'Reservation')])}</g:link>
</li>
</ul>


    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: dayInstance, field: 'daily', 'error')} ">
	<label class="col-sm-2 control-label" for="daily">
		<g:message code="day.daily.label" default="Daily" />
		
	</label>
    <div class="col-sm-10">
        <g:select id="daily" name="daily.id" from="${restauraw.menu.Daily.list()}" optionKey="id" value="${dayInstance?.daily?.id}" class="many-to-one form-control" noSelection="['null': '']"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: dayInstance, field: 'events', 'error')} ">
	<label class="col-sm-2 control-label" for="events">
		<g:message code="day.events.label" default="Events" />
		
	</label>
    <div class="col-sm-10">
        
<ul class="one-to-many">
<g:each in="${dayInstance?.events?}" var="e">
    <li><g:link controller="event" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="event" action="create" params="['day.id': dayInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'event.label', default: 'Event')])}</g:link>
</li>
</ul>


    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: dayInstance, field: 'shifts', 'error')} ">
	<label class="col-sm-2 control-label" for="shifts">
		<g:message code="day.shifts.label" default="Shifts" />
		
	</label>
    <div class="col-sm-10">
        
<ul class="one-to-many">
<g:each in="${dayInstance?.shifts?}" var="s">
    <li><g:link controller="shift" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="shift" action="create" params="['day.id': dayInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'shift.label', default: 'Shift')])}</g:link>
</li>
</ul>


    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: dayInstance, field: 'calendar', 'error')} required">
	<label class="col-sm-2 control-label" for="calendar">
		<g:message code="day.calendar.label" default="Calendar" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:select id="calendar" name="calendar.id" from="${restauraw.calendar.Calendar.list()}" optionKey="id" required="" value="${dayInstance?.calendar?.id}" class="many-to-one form-control"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: dayInstance, field: 'date', 'error')} required">
	<label class="col-sm-2 control-label" for="date">
		<g:message code="day.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:datePicker name="date" precision="day"  value="${dayInstance?.date}"  />

    </div>
</div>

