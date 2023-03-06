class YogaClassesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @yoga_classes = YogaClass.all
  end

end
