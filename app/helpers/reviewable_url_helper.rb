module ReviewableUrlHelper

  def reviewable_url(reviewable)
    case reviewable.class.name
      when 'Taxon'
        nested_taxons_url(reviewable.permalink)
      else
        polymorphic_url(reviewable)
    end
  end
end