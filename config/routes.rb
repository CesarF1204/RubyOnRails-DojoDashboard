Rails.application.routes.draw do
  root "dojos#index"
  get 'dojos/new' => 'dojos#create'
  post 'dojos/create_process' => 'dojos#create_process'
  get 'dojos/:id' => 'dojos#show'
  get 'dojos/:id/edit' => 'dojos#edit'
  patch 'edit_process/:id' => 'dojos#update'
  delete 'dojos/:id' => 'dojos#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
