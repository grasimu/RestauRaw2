<%@ page import="restauraw.menu.Category" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'category.label', default: 'Category')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<div class="location-container container">
    <div class="fahrplan-titelbild" style="background-image: url('../images/atmo.jpg')">
    </div>
    <div class="fahrplan">
        <g:each in="${categoryInstanceList}" status="i" var="categoryInstance">
            <div class="fahrplan-category">
                ${fieldValue(bean: categoryInstance, field: "name")}
            </div>
            <g:each in="${categoryInstance.sets}" var="s">
                <div class="fahrplan-speise">
                    <div class="fahrplan-speise-bild"  style="background-image: url(${s?.getUri().encodeAsHTML()})"></div>
                    <div class="fahrplan-speise-content">
                        <div class="fahrplan-speise-name">${s?.encodeAsHTML()} € </div>
                        <div class="fahrplan-speise-info">Zutaten: ${s?.getIngredients().encodeAsHTML()}</div>
                    </div>
                </div>
            </g:each>
        </g:each>
    </div>
</div>
</body>
</html>
