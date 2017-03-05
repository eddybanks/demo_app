//= require jquery
//= require tether
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require underscore
//= require gmaps/google
//= require_tree .

$(document).on('turbolinks:load', function() {
  gmap();
})
