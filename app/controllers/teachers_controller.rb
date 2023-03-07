class TeachersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]

  def show
    @teacher = Teacher.find(params[:id])
    @review = Review.new
  end
end
