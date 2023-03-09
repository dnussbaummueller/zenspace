class YogaClassesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @yoga_studios = YogaStudio.all

    if params[:query].present?
      @yoga_classes = YogaClass.global_search(params[:query])
    else
      @yoga_classes = YogaClass.all
    end

    @markers = @yoga_classes.map do |yoga_class|
    {
      lat: yoga_class.yoga_studios.first.latitude,
      lng: yoga_class.yoga_studios.first.longitude,
      info_window_html: render_to_string(partial: "shared/info_window", locals: { yoga_class: yoga_class }),
      marker_html: render_to_string(partial: "marker")
    }
    end
  end

  def show
    @yoga_class = YogaClass.find(params[:id])
    @booking = Booking.new(yoga_class: @yoga_class)
  end

  def new
    @class = YogaClass.new
  end

  def create
    @class = YogaClass.new(class_params)
    if @class.save
      redirect_to yoga_classes_path
    else
      render yoga_class_path, status: :unprocessable_entity
    end
  end

  private

  def class_params
    params.require(:class).permit(:name, :price, :description, :start_time, :end_time, :capacity)
  end
end
