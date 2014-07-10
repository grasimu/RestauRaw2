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
    <div class="speise-titelbild" style="background-image: url('../images/atmo.jpg')">
    </div>
    <div class="speise">
        <g:each in="${categoryInstanceList}" status="i" var="categoryInstance">
            <div class="speise-category">
                ${fieldValue(bean: categoryInstance, field: "name")}
            </div>
            <g:each in="${categoryInstance.sets}" var="s">
                <div class="speise-speise">
                    <div class="speise-speise-bild"  style="background-image: url(${s?.getUri().encodeAsHTML()})"></div>
                    <div class="speise-speise-content">
                        <div class="speise-speise-name">${s?.encodeAsHTML()} €</div>
                        <div class="speise-speise-info">Zutaten: ${s?.getIngredients().encodeAsHTML()}</div>
                    </div>
                </div>
            </g:each>
        </g:each>
    </div>
</div>
</body>
</html>
