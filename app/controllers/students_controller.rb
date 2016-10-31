class StudentsController < ApplicationController

  def index
  	@students = Student.order(:name) #Load all students ordered by name
  end
  #Automatically load the app/view/students/index.html.erb	

  def show
  	@student = find_student
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

   def edit
    @student = find_student
   end
   #automatically loads the associated view app/views/students/edit.html.erb

   def update
    @student = find_student

    if @student.update(student_params) #if validation pass
      redirect_to @student #Redirect to the show action for this student
    else
      render :edit #render the edit view to show the form again and display validaiton
    end
   end
   #No view associated with this action we either redirrect or render

   def destroy
    @student = find_student
    @student.destroy

    redirect_to students_url #redirects to the students index page.
   end

   private

    def student_params
      params.require(:student).permit(:name)
    end

    def find_student
      @student = Student.find(params[:id]) #Load students mentioned by id in the route
    end
end
