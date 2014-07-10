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
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0"></li>
            <li data-target="#myCarousel" data-slide-to="1"class="active"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="item " style=" background-image: url('images/ambiente2.jpg')">
                <div class="container">
                    <div class="carousel-caption">
                        <h1>Nachster Halt...</h1>
                        <p>... gleich bei ihnen am Tisch, denn unsere Speisewagen liefern ihnen Speisen und Getränke immer pünktlich! </p>
                    </div>
                </div>
            </div>
            <div class="item active" style=" background-image: url('images/alter_bahnhof.jpg')">
                <div class="container">
                    <div class="carousel-caption">
                        <h1>Zug fährt ein...</h1>
                        <p>...im alten Güterbahnhof, dem Restaurant und Museum für große und kleine Eisenbahner!</p>
                    </div>
                </div>
            </div>
            <div class="item" style=" background-image: url('images/speisen.jpg')">
                <div class="container">
                    <div class="carousel-caption">
                        <h1>Schwer beladen...</h1>
                        <p>...mit Verpflegung für Kurz- und Langstrecke!</p>
                        <a class="btn btn-lg btn-primary" href="#" role="button">Frachtliste</a>
                    </div>
                </div>
            </div>
        </div>
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
    </div><!-- /.carousel -->



    <!-- Marketing messaging and featurettes
    ================================================== -->
    <!-- Wrap the rest of the page in another container to center all the content. -->

    <div class="container marketing">

        <!-- Three columns of text below the carousel -->
        <div class="row">
            <div class="col-lg-4 text-center">
                    <img class="img-circle" src="images/bahnbedienung.jpg" alt="Generic placeholder image" style="width: 140px; height: 140px;">

                <h2>Authentische Bedienung</h2>
                <p>Unsere Bedienung bedient Sie in authentischer alter Lokführer Uniform.</p>
                <p><g:link controller="employee">Mitarbeiter</g:link></p>
            </div><!-- /.col-lg-4 -->
            <div class="col-lg-4 text-center">
                <img class="img-circle" src="images/speisen.jpg" alt="Generic placeholder image" style="width: 140px; height: 140px;">
                <h2>Speisen</h2>
                <p>Feinst hergerichtete Speisen, im Sinne der Eisenbahn. Es gibt aber auch normale Speisen.</p>
                <p><g:link controller="category">Fahrplan</g:link></p>
            </div><!-- /.col-lg-4 -->
            <div class="col-lg-4 text-center">
                <img class="img-circle" src="images/bahnhof.jpg" alt="Generic placeholder image" style="width: 140px; height: 140px;">
                <h2>Am alten Güterbahnhof</h2>
                <p>Restaurant am alten Güterbahnhof mit schöner Eisenbahn bedienung.</p>
                <p><g:link controller="location">Location</g:link></p>
            </div><!-- /.col-lg-4 -->
        </div><!-- /.row -->
    </div>
    </div>
	</body>
</html>
