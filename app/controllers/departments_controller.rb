class DepartmentsController < ApplicationController
  def index
  	@departments=Department.all
  end
  def new
  	@department = Department.new
  end
  def create
	@department = Department.new(department_params) 
	@department.save
	flash[:success] = "department has been created" 
	redirect_to departments_path
  end
  # def edit
  # end
  # def update
  # end

  private
	def article_params
		params.require(:department).permit(:name, :description) 
	end
end
