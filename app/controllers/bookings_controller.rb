class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
  end

  def confirmation
    @booking = Booking.find(params[:id])
  end
end
