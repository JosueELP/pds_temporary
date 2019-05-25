Rails.application.routes.draw do
  devise_for :workers
  devise_scope :worker do
    get '/workers/sign_out' => 'devise/sessions#destroy'
  end
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #-----------------------------------------------
  # Example of CRUD resources routes of a model:
  # get "articles", to:"articles#index"
  # get "articles/new", to:"articles#new", as :new_articles
  # get "articles/:id", to:"articles#show"
  # get "articles/edit/:id", to "articles#edit"
  # patch "articles/:id", to:"articles#update", as :article_update
  # post "articles", to:"articles#create"
  # delete "articles/:id", to:"articles#destroy"
  #-----------------------------------------------
end
