// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require datatables
//= require turbolinks
//= require_tree .
//= require bootstrap
$( document ).ready(function() {
  $('#explorer-form').submit(function(e) {
    e.preventDefault();
    var table = $('#location-table').DataTable({
      destroy: true,
      ajax: "/locations/store_explorer.json",
      columns: [
        { "data": "code" },
        { "data": "status" },
        { "data": "name" },
        { "data": "region" },
        { "data": "address" },
        { "data": "city" },
        { "data": "state" },
        { "data": "zip" },
        { "data": "phone_number" },
      ]
    })
  table.on( 'xhr', function () {
    var json = table.ajax.json();
    $('#totals').text(json.totals)
  });
  })
});
