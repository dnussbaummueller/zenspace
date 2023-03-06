class YogaClassesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]


  def show
    @yoga_class = YogaClass.find(params[:id])
  end
end
