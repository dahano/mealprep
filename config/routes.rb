Rails.application.routes.draw do
  get 'search/search_fn'
  root 'application#index'
  get 'dashboard', to: 'dashboard#index', as: :dashboard
  get 'create_item' => 'search#create_item'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
