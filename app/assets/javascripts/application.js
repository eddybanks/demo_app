//= require jquery
//= require tether
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require underscore
//= require gmaps/google
//= require react
//= require react_ujs
//= require components
//= require_tree .

$(document).on('turbolinks:load', function() {
  gmap();
})
