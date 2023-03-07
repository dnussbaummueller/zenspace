class YogaStudiosController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @yoga_studios = YogaStudio.all
  end

  def show
    @yoga_studio = YogaStudio.find(params[:id])
  end

  def new
    @yoga_studio = YogaStudio.new
  end

  def create
    @yoga_studio = YogaStudio.new(studio_params)
    @yoga_studio.user = current_user
    if @yoga_studio.save

      redirect_to yoga_studio_path(@yoga_studio)
    else
      render yoga_studios_path, status: :unprocessable_entity
    end
  end

  private

  def studio_params
    params.require(:yoga_studio).permit(:name, :address, :description)
  end
end
