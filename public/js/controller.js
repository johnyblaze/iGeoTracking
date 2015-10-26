 angular.module('controller', ['index'])
.controller('carsController', ['MyService', function(MyService) {

  MyService.getData().then(function(data) {
    $scope.data = data;
  });
}]);