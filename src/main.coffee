###*
  @ngdoc module
  @name tctc-component
  @module tctc-component
  @description

  This module requires all submodules of your app
###

angular.module 'tctc-component', []

.directive 'tctcComponent', ->
  restrict: 'E'
  template: """
    <h2>Coucou</h2>
  """
