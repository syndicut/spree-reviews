module ReviewableUrlHelper

  def reviewable_path(reviewable)
    case reviewable.class.name
      when 'Taxon'
        nested_taxons_path(reviewable.permalink)
      else
        polymorphic_path(reviewable)
    end
  end
end