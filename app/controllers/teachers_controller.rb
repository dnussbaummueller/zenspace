class TeachersController < ApplicationController
  def new
    @teacher = Teacher.new
  end

  def show
    @teacher = Teacher.find(params[:id])
  end

  def create
    @teacher = Teacher.new(teacher_params)
    @teacher.user = current_user
    @teacher.save
    redirect_to teacher_path(@teacher)
  end

  private

  def teacher_params
    params.require(:teacher).permit(:name, :description)
  end
end
