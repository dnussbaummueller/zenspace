class YogaClassesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @yoga_classes = YogaClass.all
  end

  def show
    @yoga_class = YogaClass.find(params[:id])
    @booking = Booking.new(yoga_class: @yoga_class)
  end
end
