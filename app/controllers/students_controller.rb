class StudentsController < ApplicationController

  def index
  	@students = Student.order(:name) #Load all students ordered by name
  end
  #Automatically load the app/view/students/index.html.erb	

 
  def show
  	@student = Student.find(params[:id]) #Load students mentioned by id in the route
  end
   #Automatically load the app/view/students/show.html.erb
end
