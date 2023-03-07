class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @yoga_classes = YogaClass.all
  end
end
