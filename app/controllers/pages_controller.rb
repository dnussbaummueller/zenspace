class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @yoga_classes = YogaClass.all
  end

  def admin
      @yoga_studios = YogaStudio.where(user: current_user)
      @yoga_classes = YogaClass.where(user: current_user)
      @teachers = Teacher.where(user: current_user)
  end
end
