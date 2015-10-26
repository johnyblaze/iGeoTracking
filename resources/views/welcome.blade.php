<!DOCTYPE html>
<html>
    <head>
        <title>iGeo Tracking</title>
        {!! Html::script('js/iGeoTracking.js') !!}
        {!! Html::script('https://ajax.googleapis.com/ajax/libs/angularjs/1.4.7/angular.min.js') !!}
        {!! Html::style('https://fonts.googleapis.com/css?family=Lato:100') !!}

        <style>
            html, body {
                height: 100%;
            }

            body {
                margin: 0;
                padding: 0;
                width: 100%;
                display: table;
                font-weight: 100;
                font-family: 'Lato';
            }

            .container {
                text-align: center;
                display: table-cell;
                vertical-align: middle;
            }

            .content {
                text-align: center;
                display: inline-block;
            }

            .title {
                font-size: 96px;
            }
        </style>
    </head>
    <body ng-app>
        <div class="container">
            <div class="content">
                <div class="title">iGeo Tracking System</div>
            </div>
        </div>
    </body>
</html>
