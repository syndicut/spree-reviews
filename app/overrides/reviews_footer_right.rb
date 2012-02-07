Deface::Override.new(
  :virtual_path => "layouts/spree_application",
  :name => "reviews_footer_right",
  :insert_after => "#footer-right",
  :text => "<%= javascript_include_tag('jquery.rating.js') %>
  <%= javascript_tag(\"$(document).ready(function(){$('.stars').rating({required:true});});\") %>",
  :disabled => false)