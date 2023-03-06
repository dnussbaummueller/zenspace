class TeachersController < ApplicationController
  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(teacher_params)
    @teacher.save
    redirect_to root_path
  end

  private

  def teacher_params
    params.require(:teacher).permit(:name, :description)
  end
end
