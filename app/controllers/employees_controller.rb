class EmployeesController < ApplicationController
  def index
    @employees = Employee.all()
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new()
  end

  def create
    @employee = Employee.new(employee_params)

    if @employee.save
      # redirect_to นำผู้ใช้ไปยังหน้าเว็บหรือเส้นทาง (URL) อื่นหลังจากทำการดำเนินการบางอย่าง เช่น การสร้างหรืออัปเดตข้อมูลในแอปพลิเคชัน
      redirect_to(employees_path) # employees_path คือ /employees
    else
      render(:new, status: :unprocessable_entity)
    end
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])

    if @employee.update(employee_params)
      redirect_to(@employee)
    else
      render(:edit, status: :unprocessable_entity)
    end
  end

  private
  def employee_params
    params.require(:employee).permit(:firstName, :lastName, :nickName, :code, :phone, :company)
  end
end
