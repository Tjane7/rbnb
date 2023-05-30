class ConesController < ApplicationController

  def show
    @cone = Cone.find(params[:id])
  end
  def index
    @cones = Cone.all
  end

end
