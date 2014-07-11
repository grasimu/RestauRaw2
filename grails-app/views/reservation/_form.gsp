<%@ page import="restauraw.calendar.Reservation" %>



<div class="form-group fieldcontain ${hasErrors(bean: reservationInstance, field: 'name', 'error')} required">
	<label class="col-sm-2 control-label" for="name">
		%{--<g:message code="reservation.name.label" default="Name" />--}%
		Name:
        <span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:textField class="form-control" name="name" required="" value="${reservationInstance?.name}"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: reservationInstance, field: 'phonenumber', 'error')} required">
	<label class="col-sm-2 control-label" for="phonenumber">
		%{--<g:message code="reservation.phonenumber.label" default="Phonenumber" />--}%
        Telefonnummer:
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:textField class="form-control" name="phonenumber" required="" value="${reservationInstance?.phonenumber}"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: reservationInstance, field: 'time', 'error')} required">
	<label class="col-sm-2 control-label" for="time">
		%{--<g:message code="reservation.time.label" default="Time" />--}%
        Uhrzeit:
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:textField class="form-control" name="time" required="" value="${reservationInstance?.time}"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: reservationInstance, field: 'people', 'error')} required">
	<label class="col-sm-2 control-label" for="people">
		%{--<g:message code="reservation.people.label" default="People" />--}%
        Personenanzahl:
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:field name="people" type="number" min="1" max="50" value="${reservationInstance.people}" required=""/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: reservationInstance, field: 'day', 'error')} required">
	<label class="col-sm-2 control-label" for="day">
		%{--<g:message code="reservation.day.label" default="Day" />--}%
        Tag:
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:select id="day" name="day.id" from="${restauraw.calendar.Day.list()}" optionKey="id" required="" value="${reservationInstance?.day?.id}" class="many-to-one form-control"/>

    </div>
</div>

