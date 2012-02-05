require 'generators/reviews_base'

module SpreeReviews
  module Generators
    class InstallGenerator < SpreeReviews::Generators::ReviewsBase
      
      desc "Installs required migrations for spree_reviews"
      source_root File.expand_path("../../templates/db/migrate", __FILE__)
      
      def copy_migrations
        migration_template "aaadd_attachment_file_size_to_assets.rb", "db/migrate/aaadd_attachment_file_size_to_assets.rb"
      end

    end
  end
end