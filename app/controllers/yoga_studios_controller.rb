class YogaStudiosController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  def show
    @yoga_studio = YogaStudio.find(params[:id])
    @review = Review.new
  end
end
