angular.module '%module%.landing'
.config ($stateProvider) ->
  $stateProvider
  .state 'landing',
    url: '/'
    templateUrl: 'landing/views/view.html'
    controller: 'LandingCtrl'
