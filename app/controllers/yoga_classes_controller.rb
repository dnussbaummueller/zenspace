class YogaClassesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @yoga_studios = YogaStudio.all

    # Search bar
    if params[:query].present?
      @yoga_classes = YogaClass.global_search(params[:query])
    else
      @yoga_classes = YogaClass.all
    end

    # Style filter
    @yoga_classes = @yoga_classes.where(style: params[:style]) if params[:style].present?
    # Difficulty filter
    @yoga_classes = @yoga_classes.where(difficulty: params[:difficulty]) if params[:difficulty].present?
    # Duration filter
    if params[:duration_min].present? && params[:duration_max].present?
      @yoga_classes = @yoga_classes.select { |yoga_class| yoga_class.duration_in_minutes.between?(params[:duration_min].to_i, params[:duration_max].to_i) }
    end
    # Price filter
    if params[:price_min].present? && params[:price_max].present?
      @yoga_classes = @yoga_classes.where(price: params[:price_min].to_f..params[:price_max].to_f)
    end







    # Distance filter
    if params[:address].present? && params[:max_distance].present?
      # Geocode the user's input address to get the latitude and longitude
      results = Geocoder.search(params[:address])
      if results.present?
        latitude = results.first.latitude
        longitude = results.first.longitude
        # Find yoga classes within the max distance from the user's input address
        @yoga_classes = YogaStudio.geocoded.near([latitude, longitude], params[:max_distance]).map(&:yoga_classes).flatten.uniq
      end
    end








    # Time filter
    if params[:start_date].present? && params[:end_date].present?
      start_time = DateTime.parse(params[:start_date])
      end_time = DateTime.parse(params[:end_date])
      @yoga_classes = @yoga_classes.where(start_time: start_time..end_time)
    end

    # Map markers
    @markers = @yoga_classes.map do |yoga_class|
      {
        lat: yoga_class.yoga_studios.first.latitude,
        lng: yoga_class.yoga_studios.first.longitude,
        info_window_html: render_to_string(partial: "shared/info_window", locals: { yoga_class: yoga_class })
      }
    end
  end

  def show
    @yoga_class = YogaClass.find(params[:id])
    @booking = Booking.new(yoga_class: @yoga_class)
  end

  def new
    @yoga_class = YogaClass.new
  end

  def create
    @yoga_class = YogaClass.new(class_params)
    if @yoga_class.save
      redirect_to yoga_classes_path
    else
      render yoga_class_path, status: :unprocessable_entity
    end
  end

  private

  def class_params
    params.require(:yoga_class).permit(:name, :price, :description, :start_time, :end_time, :capacity, :difficulty, :style)
  end
end
