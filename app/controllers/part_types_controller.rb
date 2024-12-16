class PartTypesController < ApplicationController
  def show
    @part_type = PartType.find(params[:id])
    @car_parts = @part_type.car_parts
  end
end
