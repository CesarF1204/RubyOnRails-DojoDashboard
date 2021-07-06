Rails.application.routes.draw do
  # dojos
  root "dojos#index"
  get 'dojos/new' => 'dojos#create'
  post 'dojos/create_process' => 'dojos#create_process'
  get 'dojos/:id' => 'dojos#show'
  get 'dojos/:id/edit' => 'dojos#edit'
  patch 'edit_process/:id' => 'dojos#update'
  delete 'dojos/:id' => 'dojos#destroy'
  # students
  get 'dojos/:id/students/new' => 'students#create'
  post 'dojos/:id/students' => 'students#create_process'
  get 'dojos/:id/students/:stud_id' => 'students#show'
  get 'dojos/:id/students/:stud_id/edit' => 'students#edit'
  patch 'dojos/:id/students/:stud_id/update' => 'students#update'
  delete 'dojos/:id/students/:stud_id' => 'students#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
