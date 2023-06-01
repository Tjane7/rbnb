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
      # redirect_to @cone, notice: "Cone was successfully created."
    else
      # raise
      render :new, status: :unprocessable_entity
    end
    raise
  end

  private

  def cone_params
    params.require(:cone).permit(:condition, :quantity, :price, :name, :description, :photo)
  end
end
