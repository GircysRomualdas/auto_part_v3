class HomeController < ApplicationController
  def index
    @part_types = PartType.all
  end
end
