describe 'Component test', ->
  [
    $compile
    $rootScope

    element
    elementScope
  ] = [undefined]

  beforeEach angular.mock.module 'tctc.component'

  beforeEach angular.mock.inject (
    _$compile_, _$rootScope_
  ) ->
    $compile = _$compile_
    $rootScope = _$rootScope_

    uncompiledElement = angular.element """
      <tctc-component>
      </tctc-component>
    """
    element = $compile(uncompiledElement) $rootScope

    $rootScope.$digest()
    elementScope = element.find('tctc-component').isolateScope()

  it 'should display "Coucou"', ->
    element.text()
    .should.contain 'Coucou'
