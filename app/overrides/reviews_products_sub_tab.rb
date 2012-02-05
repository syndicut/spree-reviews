Deface::Override.new(
    :virtual_path => "admin/shared/_product_sub_menu",
    :insert_bottom => "[data-hook='admin_product_sub_tabs']",
    :text => "<%= tab(:reviews, :label => 'review_management') %>",
    :name => "reviews_products_sub_tab")