Rails.application.routes.draw do
  namespace :admin do
    resources :feedback_reviews
    resources :reviews do
      member do
        get :approve
      end
      resources :feedback_reviews
    end
    resource :review_settings
  end

  resources :products do
    resources :reviews do
      collection do
        get :terms
        get "submissionguidelines"
      end
    end
  end

  match '/t/*taxon_permalink/reviews/new' => 'reviews#new', :as => :new_taxon_review
  match '/t/*taxon_permalink/reviews' => 'reviews#create', :as => :taxon_reviews, :via => :post
  match '/t/*taxon_permalink/reviews/terms' => 'reviews#terms'
  match '/t/*taxon_permalink/reviews/submissionguidelines' => 'reviews#submissionguidelines'

  match "/reviews/:review_id/feedback(.:format)" => "feedback_reviews#create", :via => :post, :as => "feedback_review"
end
