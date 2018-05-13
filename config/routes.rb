Rails.application.routes.draw do
  root 'home#index'
  post 'pet/create_pet'
  get 'pet/:id', to: 'pet#show'
  put 'pet/update_prediction', to: 'pet#update'
end
