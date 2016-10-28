Rails.application.routes.draw do
	# routes
	# HTTP verbs: get, post, put, patch, delete
	# verb 'url/path'
  get 'students/index'

  # SHOW Routes
  get 'students'	=> 'students#index' #Student index (Show All Students)
  get 'students/:id' => 'students#show', as: 'student', id: /\d+/ #Student Show (Show a Student)


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
