angular.module '%module%.landing'
.controller 'LandingCtrl',
($scope, $http) ->
  $http.get 'data/bar-data.csv'
  .then (res) ->
    $scope.data = Papa.parse(
      res.data
    ,
      header: true
      delimiter: ','
      dynamicTyping: true
      skipEmptyLines: true
    ).data
