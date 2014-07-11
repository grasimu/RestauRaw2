<%--
  Created by IntelliJ IDEA.
  User: cDor
  Date: 26.06.2014
  Time: 15:31
--%>

<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html lang="de">
<head>
    <asset:stylesheet src="application"/>
    <meta charset="utf-8">
    <title>Zum alten Güterbahnhof</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">


</head>
<!-- NAVBAR
================================================== -->
<body>
<div class="navbar-wrapper">
    <div class="container">
        <div class="navbar navbar-inverse navbar-static-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <a class="navbar-brand" href="${createLink(uri: '/')}">Zum alten Güterbahnhof</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li<%= request.forwardURI == "${createLink(uri: '/')}" ? ' class="active"' : '' %>><g:link controller="category" action="publicV" class="nav-link">Speisewagen</g:link></li>
                        <li<%= request.forwardURI == "${createLink(uri: '/')}" ? ' class="active"' : '' %>><g:link controller="event" action="publicV" class="nav-link">Fahrplan</g:link></li>
                        <li<%= request.forwardURI == "${createLink(uri: '/')}" ? ' class="active"' : '' %>><g:link controller="reservation" action="publicV" class="nav-link">Platz reservieren</g:link></li>
                        <li<%= request.forwardURI == "${createLink(uri: '/')}" ? ' class="active"' : '' %>><g:link controller="location" class="nav-link">Kontakt</g:link></li>
                        <li<%= request.forwardURI == "${createLink(uri: '/')}" ? ' class="active"' : '' %>><g:link controller="restaurant" class="nav-link">Unser Bahnhof</g:link></li>
                    </ul>
                </div>
            </div>
        </div>

    </div>
</div>



    <!-- /END THE FEATURETTES -->

   <div class="container">
    <g:layoutBody/>
    </div>
    <!-- FOOTER -->
    <div class="footer">
        <div class="container">
        <p class="pull-right"><a href="#" class="link-footer">Back to top</a></p>
        <p>&copy; 2014 Zum Alten Güterbahnhof, Kiel &middot; <g:link controller="shift" action="user" class="link-footer">Mitarbeiter</g:link> &middot; <g:link controller="intern" class="link-footer">Admin</g:link> &middot; <g:link controller="auth" action="signOut" class="link-footer">logout</g:link></p>
        </div>
    </div>


<!-- Bootstrap core JavaScript
<!-- Le javascript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<asset:javascript src="application.js"/>
<script>
    !function ($) {
        $(function(){
            // carousel demo
            $('#myCarousel').carousel()
        })
    }(window.jQuery)
</script>
<script src="../assets/js/holder/holder.js"></script>

</body>
</html>
