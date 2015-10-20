angular.module '%module%.landing'
.directive 'simpleBarChart', ->
  restrict: 'E'
  scope:
    chartData: '='
  templateUrl: 'landing/views/chart-directive.html'
  link: (scope, elem, attr) ->
    scope.$watch 'chartData', (newV, oldV) ->
      return unless newV
      draw newV
    draw = (data) ->
      x = d3.scale.linear().domain([
        0
        d3.max(data, (d) -> d.value)
      ]).range([
        0
        420
      ])
      d3.select('.chart')
      .selectAll('div')
      .data(data).enter()
      .append('div')
      .style('width', (d) ->
        x(+d.value) + 'px'
      ).text (d) ->
        d.title
