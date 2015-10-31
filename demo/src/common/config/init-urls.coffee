angular.module '%module%.common'
.config ($locationProvider) ->
  $locationProvider.html5Mode true
  $locationProvider.hashPrefix '!'
