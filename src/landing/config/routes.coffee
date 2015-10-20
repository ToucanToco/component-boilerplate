angular.module '%module%.landing'
.config ($stateProvider) ->
  $stateProvider
  .state 'landing',
    url: '/'
    templateUrl: 'landing/views/view.html'
    controller: 'LandingCtrl'
  .state 'landing.simple-bar-chart',
    url: 'simple-bar-chart'
    template: '<simple-bar-chart chart-data="data"></simple-bar-chart>'
