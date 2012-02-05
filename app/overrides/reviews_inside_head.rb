Deface::Override.new(
    :virtual_path => "layouts/spree_application",
    :name => "reviews_inside_head",
    :insert_bottom => "[data-hook='inside_head']",
    :text => "<%= stylesheet_link_tag('reviews.css') %>")