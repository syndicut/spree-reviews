Deface::Override.new(
    :virtual_path => "shared/_footer",
    :name => "reviews_footer_right",
    :insert_after => "[data-hook='footer_right']",
    :text => "<%= javascript_include_tag('jquery.rating.js') %>
  <%= javascript_tag(\"$(document).ready(function(){$('.stars').rating({required:true});});\") %>")