
/**
* iGeo Tracking JavaScript
* @Author Ali Usman
*
*/
angular.module('app.controller', [])
.controller('CarsController', ["$scope", function ($scope) {
    $scope.status = "Accueil";
}])
.controller('CarsController', ['$scope','$http', function ($scope, $http) {
    $http.get('/spots')
        .success(function(function(spots){
			$scope.spots = spots;
        })
        .error(function(function(spots){
			console.log("Error");
    });
}]);


/*function CarsController($scope, $http){
	alert($http);
	$http.get("/spots").success(function(spots){
		$scope.spots = spots;
	});

	$scope.distance = function(spot){
		var dist = 0;
		angular.forEach($scope.spots, function(spot){
			dist += spot.imei
		});
		return dist;
	}
}*/
CarsController.$inject = ['$scope'];
angular.module('app', []).controller('CarsController', CarsController)