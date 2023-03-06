class YogaClassesController < ApplicationController
  def new
    @class = YogaClass.new
  end

  def index
    @classes = YogaClass.all
  end

  def show
    @class = YogaClass.find(params[:index])
  end

  def create
    @class = YogaClass.new(class_params)
    if @class.save
      redirect_to yoga_classes_path(@class)
    else
      render yoga_class_path, status: :unprocessable_entity
    end
  end

  private

  def class_params
    params.require(:class).permit(:name, :price, :description, :start_time, :end_time, :capacity)
  end
end
