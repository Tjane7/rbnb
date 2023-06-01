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
    raise
    @booking = Booking.find(params[:id])
    if booking.accepted = true
      @booking.update(booking_params)
    else
      booking.accepted = false
    end
  end

  def index
    @bookings = Booking.all
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
