Rails.application.routes.draw do
	# routes
	# HTTP verbs: get, post, put, patch, delete
	# verb 'url/path'
   #get 'students/index'


  # SHOW Routes
  get 'students'	=> 'students#index' #Student index (Show All Students)
  get 'students/:id' => 'students#show', as: 'student', id: /\d+/ #Student Show (Show a Student)


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #Create routes
  get 'students/new' => 'students#new', as: 'new_student'
  post 'students' => 'students#create'

  #Update routes
  get 'students/:id/edit' => 'students#edit', as: 'edit_student', id:/\d+/
  patch 'students/:id' => 'students#update'

  #Delete route
  delete 'students/:id' => 'students#destroy' #, as: 'destroy_student', id:/\d+/

    root to: 'students#index'
end
