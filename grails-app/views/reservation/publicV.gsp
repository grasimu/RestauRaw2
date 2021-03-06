<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'reservation.label', default: 'Reservation')}" />
    <title><g:message code="default.create.label" args="[entityName]" /></title>
</head>
<body>
<div class="location-container container">
<div class="speise-titelbild" style="background-image: url('../images/Fahrschein.jpg')">
</div>
<div id="create-reservation" class="content scaffold-create form-group" role="main">
    <h1>Reservierung anlegen:</h1>
    <g:hasErrors bean="${reservationInstance}">
        <ul class="errors" role="alert">
            <g:eachError bean="${reservationInstance}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
            </g:eachError>
        </ul>
    </g:hasErrors>
    <g:form url="[resource:reservationInstance, action:'save2']"  role="form" class="form-horizontal">
        <fieldset>
            <g:render template="form"/>
        </fieldset>
        <fieldset class="buttons pull-right">
            <g:submitButton name="create" class="btn btn-success save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
        </fieldset>
    </g:form>

</div>
</div>
</body>
</html>
