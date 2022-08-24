// -----------------------------------------------------------------------------
// Title: Users
// ID: #usersChart
// Location: index.html
// Dependency File(s): assets/vendor/chart.js/dist/Chart.bundle.min.js

const { getJSON } = require("jquery");

// -----------------------------------------------------------------------------
(function(window, document, $, undefined) {
    "use strict";
  $(function() {
    if ($('#usersChart').length == 0) {
      return;
    }
    var ctx = document.getElementById("usersChart").getContext("2d");
    var gradient = ctx.createLinearGradient(0, 0, 0, 240);
    gradient.addColorStop(0, Chart.helpers.color(QuantumPro.APP_COLORS.info).alpha(0.9).rgbString());
    gradient.addColorStop(1, Chart.helpers.color('#ffffff').alpha(0).rgbString());
    var config = {
      type: 'line',
      data: {
        labels: ["January", "February", "March", "April", "May", "June", "July", "August","September","October","November","December"],
        datasets: [{
          label: "Universities",
          backgroundColor: gradient,
          borderWidth: 2,
          borderColor: QuantumPro.APP_COLORS.info,
          pointBackgroundColor: Chart.helpers.color(QuantumPro.APP_COLORS.info).alpha(1).rgbString(),
          pointBorderColor: Chart.helpers.color('#ffffff').alpha(0).rgbString(),
          pointHoverBackgroundColor: Chart.helpers.color('#ffffff').alpha(0.1).rgbString(),
          pointHoverBorderColor: Chart.helpers.color('#ffffff').alpha(0.1).rgbString(),
          data: [gon.uni_counts[1], gon.uni_counts[2],gon.uni_counts[3],gon.uni_counts[4], gon.uni_counts[5], gon.uni_counts[6], gon.uni_counts[7], gon.uni_counts[8],gon.uni_counts[9],gon.uni_counts[10],gon.uni_counts[11],gon.uni_counts[12]]
        }]
      },
      options: {
        title: {
          display: false,
        },
        tooltips: {
          mode: 'nearest',
          intersect: false,
          position: 'nearest',
          xPadding: 10,
          yPadding: 10,
          caretPadding: 10
        },
        legend: {
          display: false
        },
        responsive: true,
        maintainAspectRatio: false,
        scales: {
          xAxes: [{
            display: false,
            gridLines: false,
            scaleLabel: {
              display: true,
              labelString: 'Month'
            }
          }],
          yAxes: [{
            display: false,
            gridLines: false,
            scaleLabel: {
              display: true,
              labelString: 'Value'
            },
            ticks: {
              beginAtZero: true
            }
          }]
        },
        elements: {
          line: {
            tension: 0.000001
          },
          point: {
            radius: 4,
            borderWidth: 8
          }
        },
        layout: {
          padding: {
            left: 0,
            right: 0,
            top: 50,
            bottom: 0
          }
        }
      }
    };

    var chart = new Chart(ctx, config);

  });

})(window, document, window.jQuery);
