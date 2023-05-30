class ConesController < ApplicationController

  def show
    @cone = Cone.find(params[:id])
  end
end
