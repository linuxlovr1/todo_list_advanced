Rails.application.routes.draw do
  root "lists#index"

  resources :lists
 
  delete "delete_all_items", to: "lists#destroy_all"
end
