<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Restraurante</title>
	</head>
	<body>
    <div class="location-container container">
    <!-- Carousel
    ================================================== -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="15000">
        <!-- Indicators -->
        %{--<ol class="carousel-indicators">--}%
            %{--<li data-target="#myCarousel" data-slide-to="0"></li>--}%
            %{--<li data-target="#myCarousel" data-slide-to="1"class="active"></li>--}%
            %{--<li data-target="#myCarousel" data-slide-to="2"></li>--}%
        %{--</ol>--}%
        <div class="carousel-inner">
            <div class="item active" style=" background-image: url('images/ambiente2.jpg')">
                <div class="container">
                    <div class="carousel-caption">
                        <h1>Nächster Halt...</h1>
                        <p>... gleich bei ihnen am Tisch, denn unsere Speisewagen liefern ihnen Speisen und Getränke immer pünktlich! </p>
                        <a class="btn btn-lg btn-success" href="${createLink(uri: '/reservation/publicV')}" role="button">Jetzt reservieren</a>
                    </div>
                </div>
            </div>
            <div class="item" style=" background-image: url('images/alter_bahnhof2.jpg')">
                <div class="container">
                    <div class="carousel-caption">
                        <h1>Zug fährt ein...</h1>
                        <p>...im alten Güterbahnhof, dem Restaurant und Museum für große und kleine Eisenbahner!</p>
                        <a class="btn btn-lg btn-success" href="${createLink(uri: '/restaurant/index')}" role="button">Mehr erfahren</a>
                    </div>
                </div>
            </div>
            <div class="item" style=" background-image: url('images/speisen.jpg')">
                <div class="container">
                    <div class="carousel-caption">
                        <h1>Schwer beladen...</h1>
                        <p>...mit Verpflegung für Kurz- und Langstrecke!</p>
                        <a class="btn btn-lg btn-success" href="${createLink(uri: '/category/publicV')}" role="button">Ladung betrachten</a>
                    </div>
                </div>
            </div>
        </div>
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
    </div><!-- /.carousel -->


    <div >

        <h1> <center> Wir begrüßen Sie ganz herzlich</center></h1>
        <h3> am alten Güterbahnhof, dem Restaurant und Museum das Eisenbahnerherzen höher schlagen lässt.</h3>
    </div>
    <!-- Marketing messaging and featurettes
    ================================================== -->
    <!-- Wrap the rest of the page in another container to center all the content. -->

    <div class="container marketing">

        <!-- Three columns of text below the carousel -->
        <div class="row">
        <div class="col-lg-4 text-center">
            <img class="img-circle" src="images/bahnhof.jpg" alt="Generic placeholder image" style="width: 140px; height: 140px;">
            <h2>Am alten Güterbahnhof</h2>
            <p>gelegen, hat unserer Restaurant den b
            esten Standort und die beste Austattung die man als Eisenbahner nur haben kann. Ein eigenes befahrbares Haltegleis
            und diverse historische Gegenstände.</p>
            <p><g:link controller="location">Über uns</g:link></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4 text-center">
            <img class="img-circle" src="images/Zuggrill.gif" alt="Generic placeholder image" style="width: 140px; height: 140px;">
            <h2>Der Fahrplan</h2>
            <p>informiert über die spannenden Haltestellen auf unserer Fahrt durch das Jahr. Wir haben Veranstaltung für alle Altersklassen.</p>
            <p><g:link controller="event" action="publicV">Unser Fahrplan</g:link></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4 text-center">
            <img class="img-circle" src="images/bahnbedienung.jpg" alt="Generic placeholder image" style="width: 140px; height: 140px;">
            <h2>Unsere Mitarbeiter</h2>
            <p>in authentischer Kleidung stehen ihn jederzeit für ein Fachgespräch zur Verfügung und sorgen dafür, dass ihre Speisen keine Verspätung haben</p>
            <p><g:link controller="reservation" action="publicV">Ticket buchen</g:link></p>
        </div><!-- /.col-lg-4 -->

        </div><!-- /.row -->
    </div>
    </div>
    <br>
    <br>
    <br>
	</body>
</html>
