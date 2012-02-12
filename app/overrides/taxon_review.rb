Deface::Override.new(
    :virtual_path => "taxons/show",
    :name => "taxon_review",
    :insert_after => "[data-hook='taxon_products'], [data-hook='taxon_children']",
    :partial => "shared/taxon_reviews", :object => @taxon)

