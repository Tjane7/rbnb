class ConesController < ApplicationController

  def index
    @cones = Cone.all
  end

  def show
    @cone = Cone.find(params[:id])
  end

  def new
    @cone = Cone.new
  end

  def create
    @cone = Cone.new(cone_params)
    if @cone.save
      redirect_to cone_path(@cone)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def cone_params
    params.require(:cone).permit(:condition, :quantity, :location, :name, :description)
  end
end
