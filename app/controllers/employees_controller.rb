class EmployeesController < ApplicationController

  before_action :init_employee, only: [:edit, :show, :update]

  def index
    @employees = Employee.all
  end

  def edit
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      redirect_to employees_path
    else
      render :new
    end
  end


  def update
  end

  def show
  end

  private

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :image_url, :dog_id)
  end

  def init_employee
    @employee = Employee.find(params[:id])
  end
end
