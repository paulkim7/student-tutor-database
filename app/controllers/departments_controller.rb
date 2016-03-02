class DepartmentsController < ApplicationController
  def new
    @department = Department.new
  end
    
  def show
    @department = Department.find(params[:id])
    @lectures = @department.lectures.paginate(:page => params[:page])
  end

  def index
    @departments = Department.all
  end
end
