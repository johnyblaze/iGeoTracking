<!DOCTYPE html>
<html ng-app="app">
    <head>
        <title>iGeo Tracking</title>
        {!! Html::script('js/jquery.js') !!}
        {!! Html::script('https://ajax.googleapis.com/ajax/libs/angularjs/1.4.7/angular.min.js') !!}
        {!! Html::style('https://fonts.googleapis.com/css?family=Lato:100') !!}
        {!! Html::script('js/iGeoTracking.js') !!}

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
            }

            .container {
                text-align: center;
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
    <body>
        <div class="container tracking_container">
			<div class="content">
                <div class="title">iGeo Tracking System</div>
            </div>
            {!! Form::open(array('url' => 'spot/create', 'method' => 'GET')) !!}
				<div class="form-group">
					{!! Form::Label('date', 'Please select a date to find distance:') !!}
				    {!! Form::input('date', 'date', null, ['class' => 'form-control', 'placeholder' => 'Date']) !!}
				    {!! Form::Label('car', 'Please select a car:') !!}
				    {!! Form::select('item_id', $carsIMEI, null, ['class' => 'CarsController']) !!}
				    {!! Form::submit('Click Me!') !!}
				</div>
			{!! Form::close() !!}
			<div id="cars" ng-controller="carsController">
				{{-- <div class="distance" ng-if="distance()">
					Total Distance : {{distance()}}
				</div>
				<ul class="unstyled">
					<li ng-repeat="spot in spots">
						{{spot.model}}
					</li>
				</ul> --}}
			</div>
        </div>
    </body>
</html>