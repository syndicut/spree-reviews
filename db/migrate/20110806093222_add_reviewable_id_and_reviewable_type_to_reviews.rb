class AddReviewableIdAndReviewableTypeToReviews < ActiveRecord::Migration
  def self.up
    add_column :reviews, :reviewable_id, :integer
    add_column :reviews, :reviewable_type, :string
    remove_column :reviews, :product_id
  end

  def self.down
    remove_column :reviews, :reviewable_id
    remove_column :reviews, :reviewable_type
    add_column :reviews, :product_id, :integer
  end
end
