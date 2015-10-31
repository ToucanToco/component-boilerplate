###*
  @ngdoc object
  @name storage
  @module %module%.common
  @description

  This value object is an application-wide data-store.
  It's published in `$rootScope` for easy-access in views.
###

angular.module '%module%.common'
.value 'storage', {}

.run ($rootScope, storage) ->
  $rootScope.storage = storage
