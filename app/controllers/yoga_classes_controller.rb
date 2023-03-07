class YogaClassesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @yoga_classes = YogaClass.all
  end

  def show
    @yoga_class = YogaClass.find(params[:id])
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
