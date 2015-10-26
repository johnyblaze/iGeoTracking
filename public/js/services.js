angular.module('services', [])
.factory('MyService', function($q, $timeout){
  var getData = function getData() {

    var deferred = $q.defer();

    $timeout(function () {
      deferred.resolve('Foo');
    }, 5000);

    return deferred.promise;
  };

  return {
    getData: getData
  };
});