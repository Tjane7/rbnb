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
    @cone.user = current_user
    if @cone.save
      redirect_to cone_path(@cone)
    else
      render :new, status: :unprocessable_entity
    end
    # raise
  end

  private

  def cone_params
    params.require(:cone).permit(:name, :description, :price, :condition, :quantity, :photo)
  end
end
