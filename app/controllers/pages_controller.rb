class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @yoga_classes = YogaClass.all
    @random_yoga_classes = @yoga_classes.sample(3)
  end

  def admin
    if current_user.admin?
      @yoga_studios = YogaStudio.all
      @yoga_classes = YogaClass.all
      @users = User.all
      @teachers = Teacher.all
    else
      redirect_to root_path
    end
  end
end
