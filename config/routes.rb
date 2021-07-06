Rails.application.routes.draw do
  root "dojos#index"
  get 'dojos/new' => 'dojos#create'
  post 'dojos/create_process' => 'dojos#create_process'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
