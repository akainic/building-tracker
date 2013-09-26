class BuildingsController < ApplicationController

  def new
    @building = Building.new
  end

  def create
    @building = Building.new(building_params)
    if @building.save
      redirect_to '/buildings/new', notice: 'You have successfully recorded this building.'
    else
      render :new
    end
  end

  protected
  def building_params
    params.require(:building).permit(:street_address, :city, :state_id, :postal_code, :description, :owner_id)
  end


end
