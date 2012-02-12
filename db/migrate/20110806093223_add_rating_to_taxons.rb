class AddRatingToTaxons < ActiveRecord::Migration
  def self.up
    add_column :taxons, :avg_rating, :decimal, :default => 0.0, :null => false, :precision => 7, :scale => 5
    add_column :taxons, :reviews_count, :integer, :default => 0, :null => false

    Taxon.reset_column_information
    Taxon.all.each do |p|
      Taxon.update_counters p.id, :reviews_count => p.reviews.length
      p.recalculate_rating
    end
  end

  def self.down
    remove_column :taxons, :reviews_count
    remove_column :taxons, :avg_rating
  end
end
