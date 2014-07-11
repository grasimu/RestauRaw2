
<%@ page import="restauraw.calendar.Event" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'event.label', default: 'Event')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
<g:each in="${eventInstanceList}" status="i" var="eventInstance">
    <div class="fahrplan-titel">
        ${eventInstance.name}
    </div>
    <div class="fahrplan-datum">
      Am ${eventInstance.day} um ${eventInstance.starttime} Uhr
    </div>
    <div class="fahrplan-content">
        ${eventInstance.info}
    </div>
    <hr>
</g:each>
</div>
</body>
</html>
