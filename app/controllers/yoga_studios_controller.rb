class YogaStudiosController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  def show
    @yoga_studio = YogaStudio.find(params[:id])
    @review = Review.new
  end

  def index
    @yoga_studios = YogaStudio.all
  end
end
