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
    @yoga_class = YogaClass.new
    @yoga_class.yoga_studio_ids = []
  end

  def create
    @yoga_class = YogaClass.new(yoga_class_params)
    @yoga_class.user = current_user
    @yoga_studio_teacher = YogaStudioTeacher.create!(yoga_studio_id: params[:yoga_class][:yoga_studio].to_i, teacher_id: params[:yoga_class][:teacher].to_i)
    @yoga_class.yoga_studio_teacher = @yoga_studio_teacher
    if @yoga_class.save
      redirect_to yoga_classes_path, notice: "Yoga class was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def yoga_class_params
    params.require(:yoga_class).permit(:name, :price, :description, :difficulty, :style, :start_time, :end_time, :capacity, :photo, :yoga_studio, :teacher)
  end
end
