class BookingsController < ApplicationController

  # how do a user acccept or reject booking ?

  def new
   # @booking = Booking.new
   @cone = Cone.find(params[:cone_id])
   @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @cone = Cone.find(params[:cone_id])
    @booking.cone = @cone
    @booking.user = current_user
    if @booking.save
      redirect_to cone_path(@cone)
    else
      render :new, status: :unprocessable_entity
    end
  end


  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      redirect_to bookings_path
    else
      render :index, status: 422
    end
  end

  def index
    @bookings = current_user.owner_bookings
  end

  private

  # Only allow a list of trusted parameters through.

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :accepted)
  end
end
