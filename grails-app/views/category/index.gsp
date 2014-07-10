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
                    <div class="fahrplan-speise-bild"  style="background-image: url('../images/apfel-curry-sueppchen.jpg')"></div>
                    <div class="fahrplan-speise-content">
                        <div class="fahrplan-speise-name">${s?.encodeAsHTML()} €</div>
                        <div class="fahrplan-speise-info">Inhaltsstoffe: ${s?.getIngredients().encodeAsHTML()}</div>
                    </div>
                </div>
            </g:each>
        </g:each>
    %{--<g:each in="${dishInstanceList}" status="i" var="dishInstance">--}%
    %{--<tr >--}%

    %{--<td><g:link action="show" id="${dishInstance.id}">${fieldValue(bean: dishInstance, field: "price")}</g:link></td>--}%

    %{--<td>${fieldValue(bean: dishInstance, field: "ingredients")}</td>--}%

    %{--<td>${fieldValue(bean: dishInstance, field: "name")}</td>--}%

    %{--<td>${fieldValue(bean: dishInstance, field: "set")}</td>--}%

    %{--</tr>--}%
    %{--</g:each>--}%
    %{--<div class="fahrplan-category">--}%
    %{--Vorspeisen--}%
    %{--<div class="fahrplan-speise">--}%
    %{--<div class="fahrplan-speise-bild"  style="background-image: url('../images/apfel-curry-sueppchen.jpg')"></div>--}%
    %{--<div class="fahrplan-speise-content">--}%
    %{--<div class="fahrplan-speise-name">Apfel - Curry - SÃ¼ppchen - 4,90â‚¬</div>--}%
    %{--<div class="fahrplan-speise-info">Inhaltsstoffe: Apfel, Knoblauch, Ingwer, Cury, Wein</div>--}%
    %{--</div>--}%
    %{--</div>--}%
    %{--<div class="fahrplan-speise">--}%
    %{--<div class="fahrplan-speise-bild"  style="background-image: url('../images/asiatische-huehner-nudelsuppe.jpg')"></div>--}%
    %{--<div class="fahrplan-speise-content">--}%
    %{--<div class="fahrplan-speise-name"><br>Asiatische HÃ¼hner - Nudelsuppe - 3,95â‚¬</div>--}%
    %{--<div class="fahrplan-speise-info">Inhaltsstoffe: Weizen, Tomaten, Diverse KrÃ¤uter, Fleisch</div>--}%
    %{--</div>--}%
    %{--</div>--}%
    %{--</div>--}%
    %{--<div class="fahrplan-category">--}%
    %{--Nudelgerichte--}%
    %{--<div class="fahrplan-speise">--}%
        peise">
    %{--<div class="fahrplan-speise-bild"  style="background-image: url('../images/Spagehtti.jpg')"></div>--}%
    %{--<div class="fahrplan-speise-content">--}%
    %{--<div class="fahrplan-speise-name">Spaghetti boulongnase - 8,70â‚¬</div>--}%
    %{--<div class="fahrplan-speise-info">Inhaltsstoffe: Weizen, Tomaten, Diverse KrÃ¤uter, Fleisch</div>--}%
    %{--</div>--}%
    %{--</div>--}%
    %{--<div class="fahrplan-speise">--}%
    %{--<div class="fahrplan-speise-bild"  style="background-image: url('../images/spaghetti-carbonara.jpg')"></div>--}%
    %{--<div class="fahrplan-speise-content">--}%
    %{--<div class="fahrplan-speise-name">Spaghetti Carbonara - 10,50â‚¬</div>--}%
    %{--<div class="fahrplan-speise-info">Inhaltsstoffe: Weizen, Tomaten, Diverse KrÃ¤uter, Fleisch</div>--}%
    %{--</div>--}%
    %{--</div>--}%
    %{--</div>--}%
    </div>
</div>
%{--<a href="#list-category" class="skip" tabindex="-1"><g:message code="default.link.skip.label"--}%
%{--default="Skip to content&hellip;"/></a>--}%

%{--<div class="nav" role="navigation">--}%
%{--<ul>--}%
%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
%{--<li><g:link class="create" action="create"><g:message code="default.new.label"--}%
%{--args="[entityName]"/></g:link></li>--}%
%{--</ul>--}%
%{--</div>--}%

%{--<div id="list-category" class="content scaffold-list" role="main">--}%
%{--<h1><g:message code="default.list.label" args="[entityName]"/></h1>--}%
%{--<g:if test="${flash.message}">--}%
%{--<div class="message" role="status">${flash.message}</div>--}%
%{--</g:if>--}%
%{--<table>--}%
%{--<thead>--}%
%{--<tr>--}%

%{--<g:sortableColumn property="info" title="${message(code: 'category.info.label', default: 'Info')}"/>--}%

%{--<g:sortableColumn property="name" title="${message(code: 'category.name.label', default: 'Name')}"/>--}%

%{--</tr>--}%
%{--</thead>--}%
%{--<tbody>--}%
%{--<g:each in="${categoryInstanceList}" status="i" var="categoryInstance">--}%
%{--<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">--}%

%{--<td><g:link action="show"--}%
%{--id="${categoryInstance.id}">${fieldValue(bean: categoryInstance, field: "info")}</g:link></td>--}%

%{--<td>${fieldValue(bean: categoryInstance, field: "name")}</td>--}%

%{--</tr>--}%
%{--</g:each>--}%
%{--</tbody>--}%
%{--</table>--}%

%{--<div class="pagination">--}%
%{--<g:paginate total="${categoryInstanceCount ?: 0}"/>--}%
%{--</div>--}%
%{--</div>--}%
</body>
</html>

%{--<%@ page import="restauraw.menu.Category" %>--}%
%{--<!DOCTYPE html>--}%
%{--<html>--}%
%{--<head>--}%
%{--<meta name="layout" content="main">--}%
%{--<g:set var="entityName" value="${message(code: 'category.label', default: 'Category')}" />--}%
%{--<title><g:message code="default.list.label" args="[entityName]" /></title>--}%
%{--</head>--}%
%{--<body>--}%
%{--<div class="nav-divider" role="navigation">--}%
%{--<a class="form-control" href="${createLink(uri: '/intern/')}"><span class="glyphicon glyphicon-home"></span> <g:message code="default.home.label"/></a>--}%
%{--<g:link class="form-control" action="create"><span class="glyphicon glyphicon glyphicon-plus-sign"></span> <g:message code="default.new.label" args="[entityName]" /></g:link>--}%
%{--</div>--}%
%{--<div id="list-category" class="content scaffold-list" role="main">--}%
%{--<h1><g:message code="default.list.label" args="[entityName]" /></h1>--}%
%{--<div class="table-responsive">--}%
%{--<table class="table table-striped">--}%
%{--<thead>--}%
%{--<tr>--}%
%{----}%
%{--<g:sortableColumn property="info" title="${message(code: 'category.info.label', default: 'Info')}" />--}%
%{----}%
%{--<g:sortableColumn property="name" title="${message(code: 'category.name.label', default: 'Name')}" />--}%
%{----}%
%{--</tr>--}%
%{--</thead>--}%
%{--<tbody>--}%
%{--<g:each in="${categoryInstanceList}" status="i" var="categoryInstance">--}%
%{--<tr >--}%
%{----}%
%{--<td><g:link action="show" id="${categoryInstance.id}">${fieldValue(bean: categoryInstance, field: "info")}</g:link></td>--}%
%{----}%
%{--<td>${fieldValue(bean: categoryInstance, field: "name")}</td>--}%
%{----}%
%{--</tr>--}%
%{--</g:each>--}%
%{--</tbody>--}%
%{--</table>--}%
%{--</div>--}%
%{--<div class="pagination">--}%
%{--<g:paginate total="${categoryInstanceCount ?: 0}" />--}%
%{--</div>--}%
%{--</div>--}%
%{--</body>--}%
%{--</html>--}%
