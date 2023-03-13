class TeachersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  def index
    @teachers = Teacher.all
  end

  def show
    @teacher = Teacher.find(params[:id])
    @review = Review.new
  end

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(teacher_params)
    @teacher.user = current_user
    if @teacher.save
      redirect_to teacher_path(@teacher)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def teacher_params
    params.require(:teacher).permit(:name, :description, photos: [])
  end
end
