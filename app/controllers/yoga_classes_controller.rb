class YogaClassesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @yoga_classes = YogaClass.all
    @yoga_studios = YogaStudio.all
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
  end
end
