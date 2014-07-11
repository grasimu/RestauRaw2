
<%@ page import="restauraw.calendar.Event" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'event.label', default: 'Event')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
%{--<div class="container">--}%


            %{--<div class="blog-post">--}%
                %{--<h2 class="blog-post-title">Sample blog post</h2>--}%
                %{--<p class="blog-post-meta">January 1, 2014 by <a href="#">Mark</a></p>--}%

                %{--<p>This blog post shows a few different types of content that's supported and styled with Bootstrap. Basic typography, images, and code are all supported.</p>--}%
                %{--<hr>--}%
                %{--<p>Cum sociis natoque penatibus et magnis <a href="#">dis parturient montes</a>, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p>--}%
                %{--<blockquote>--}%
                    %{--<p>Curabitur blandit tempus porttitor. <strong>Nullam quis risus eget urna mollis</strong> ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>--}%
                %{--</blockquote>--}%
                %{--<p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>--}%

        %{--</div><!-- /.blog-main -->--}%

%{--</div><!-- /.container -->--}%
%{--<div id="list-event" class="content scaffold-list" role="main">--}%
    %{--<div class="table-responsive">--}%
        %{--<table class="table table-striped">--}%
            %{--<thead>--}%
            %{--<tr>--}%

                %{--<g:sortableColumn property="name" title="${message(code: 'event.name.label', default: 'Name')}" />--}%

                %{--<g:sortableColumn property="info" title="${message(code: 'event.info.label', default: 'Info')}" />--}%

                %{--<g:sortableColumn property="starttime" title="${message(code: 'event.starttime.label', default: 'Starttime')}" />--}%

                %{--<g:sortableColumn property="duration" title="${message(code: 'event.duration.label', default: 'Duration')}" />--}%

                %{--<th><g:message code="event.day.label" default="Day" /></th>--}%

            %{--</tr>--}%
            %{--</thead>--}%
            %{--<tbody>--}%
            %{--<g:each in="${eventInstanceList}" status="i" var="eventInstance">--}%
                %{--<tr >--}%

                    %{--<td><g:link action="show" id="${eventInstance.id}">${fieldValue(bean: eventInstance, field: "name")}</g:link></td>--}%

                    %{--<td>${fieldValue(bean: eventInstance, field: "info")}</td>--}%

                    %{--<td>${fieldValue(bean: eventInstance, field: "starttime")}</td>--}%

                    %{--<td>${fieldValue(bean: eventInstance, field: "duration")}</td>--}%

                    %{--<td>${fieldValue(bean: eventInstance, field: "day")}</td>--}%

                %{--</tr>--}%
            %{--</g:each>--}%
            %{--</tbody>--}%
        %{--</table>--}%
    %{--</div>--}%
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
