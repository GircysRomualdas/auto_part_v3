class Admin::PartTypesController < AdminController
  def index
    @part_types = PartType.all
  end
end
