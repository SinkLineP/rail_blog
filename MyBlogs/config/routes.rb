Rails.application.routes.draw do

  root to: "articles#index"
 
  get 'about/new'
  get 'terms/new'
  

  get 'contacts' => 'contacts#new'
  resources :contacts, only: [:create]
  resources :articles do
  	resources :comments
  end
end