class YogaStudiosController < ApplicationController
  def index
    @yoga_studios = YogaStudio.all
    end
  end
end
