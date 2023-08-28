class EquipmentsController < ApplicationController

  def index
    @equipments = Equipment.where(deleteStatus: false)
  end

  def show
    @equipment = Equipment.find(params[:id])
  end

  def new
    @equipment = Equipment.new
  end

  def create
    @equipment = Equipment.new(equipment_params)

    if @equipment.save
      redirect_to(equipments_path)
    else
      render(:new, status: :unprocessable_entity)
    end
  end

  def edit
    @equipment = Equipment.find(params[:id])
  end

  def update
    @equipment = Equipment.find(params[:id])

    if @equipment.update(equipment_params)
      redirect_to(@equipment)
    else
      render(:edit, status: :unprocessable_entity)
    end
  end

  def destroy
    @equipment = Equipment.find(params[:id])
    @equipment.update(deleteStatus: true)
    redirect_to(equipments_path)
  end

  private
  def equipment_params
    params.require(:equipment).permit(:itemName, :serialNumber, :itemType, :status, :amount)
  end
  
end