class ConesController < ApplicationController

  def index
    @cones = Cone.all
  end

end
