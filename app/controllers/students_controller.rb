class StudentsController < ApplicationController

  def index
  	@students = Student.order(:name) #Load all students ordered by name
  end
  #Automatically load the app/view/students/index.html.erb	

 
  def show
  	@student = Student.find(params[:id]) #Load students mentioned by id in the route
  end
   #Automatically load the app/view/students/show.html.erb

   def new
   	@student = Student.new
   end
   # Automatically load the app/view/students/new.html.erb

   def create
   	@student = Student.new(student_params)

   	if @student.save #if the validations pass
   		redirect_to @student
   	else #if the validation fails
   		render :new #Render the view associated with the new action
   	end
   end
   #This action does not have an associate view

    def student_params
      params.require(:student).permit(:name)
    end
end
