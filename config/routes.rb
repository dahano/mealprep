Rails.application.routes.draw do
  post 'food_item/add_item'
  get 'food_item/search'
  root :to => 'dashboard#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
