class Admin::CarPartsController < AdminController
  before_action :set_car_part, only: %i[ show edit update destroy ]
  def index
    @car_parts = CarPart.all
  end

  def show
  end

  def new
    @car_part = CarPart.new
  end

  def edit
  end

  def create
    @car_part = CarPart.new(car_part_params)

    if @car_part.save
      redirect_to admin_car_part_path(@car_part), notice: "Car part successfully created."
    else
      render :new, alert: "Error when craeting car part"
    end
  end

  def update
    if @car_part.update(car_part_params.reject { |k| k["images"] })
      if car_part_params["images"]
        car_part_params["images"].each do |image|
          @car_part.images.attach(image)
        end
      end

      redirect_to admin_car_part_path(@car_part), notice: "Car part successfully updated."
    else
      render :edit, alert: "Error when updating car part"
    end
  end

  def destroy
    @car_part.destroy!

    redirect_to admin_car_parts_path, notice: "Car part was seccessfully destroyed."
  end

  private
    def set_car_part
      @car_part = CarPart.find(params.expect(:id))
    end

    def car_part_params
      params.expect(car_part: [ :name, :description, :price, :part_type_id, :active, images: [] ])
    end
end
