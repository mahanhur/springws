<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style>
  #container {
    width:800px;
    height:400px;
    border:2px solid lightgray;
  }
</style>

<script>
  let chart01 = {
    init: () => {
      // Data retrieved https://en.wikipedia.org/wiki/List_of_cities_by_average_temperature
      Highcharts.chart('container', {
        chart: {
          type: 'spline'
        },
        title: {
          text: 'Monthly Average Temperature'
        },
        subtitle: {
          text: 'Source: ' +
                  '<a href="https://en.wikipedia.org/wiki/List_of_cities_by_average_temperature" ' +
                  'target="_blank">Wikipedia.com</a>'
        },
        xAxis: {
          categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
            'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
          accessibility: {
            description: 'Months of the year'
          }
        },
        yAxis: {
          title: {
            text: 'Temperature'
          },
          labels: {
            formatter: function () {
              return this.value + '°';
            }
          }
        },
        tooltip: {
          crosshairs: true,
          shared: true
        },
        plotOptions: {
          spline: {
            marker: {
              radius: 4,
              lineColor: '#666666',
              lineWidth: 1
            }
          }
        },
        series: [{
          name: 'Tokyo',
          marker: {
            symbol: 'square'
          },
          data: [5.2, 5.7, 8.7, 13.9, 18.2, 21.4, 25.0, 26.0, 22.8, 17.5, 12.1, 7.6]

        }, {
          name: 'Bergen',
          marker: {
            symbol: 'diamond'
          },
          data: [1.5, 1.6, 3.3, 5.9, 10.5, 13.5, 14.5, 14.4, 11.5, 8.7, 4.7, 2.6]
        }, {
          name: 'Korea',
          marker: {
            symbol: 'diamond'
          },
          data: [0.0, 0.4, 5.7, 12.5, 17.8, 22.2, 24.9, 25.7, 21.2, 14.8, 7.2, 0.4]
        }]
      });
    },
  };

  $( ()=> {
    chart01.init();
  });
</script>

<div class="col-sm-8 text-left">
  <h3>CHART01</h3><br/>
  <div id="container"></div>
</div>