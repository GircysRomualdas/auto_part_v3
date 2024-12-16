class Admin::StocksController < AdminController
  before_action :set_stock, only: %i[ show edit update destroy ]
  def index
    @stocks = Stock.where(car_part_id: params[:car_part_id])
  end

  def show
  end

  def new
    @car_part = CarPart.find(params[:car_part_id])
    @stock = Stock.new
  end

  def edit
    @car_part = CarPart.find(params[:car_part_id])
  end

  def create
    @car_part = CarPart.find(params[:car_part_id])
    @stock = @car_part.stocks.new(stock_params)

    if @stock.save
      redirect_to admin_car_part_stock_url(@car_part, @stock), notice: "Stock successfully created."
    else
      render :new, alert: "Error when craeting stock"
    end
  end

  def update
    if @stock.update(stock_params)
      redirect_to admin_car_part_stock_url(@stock.car_part, @stock), notice: "Stock successfully updated."
    else
      render :edit, alert: "Error when updating stock"
    end
  end

  def destroy
    @car_part = @stock.car_part
    @stock.destroy!

    redirect_to admin_car_part_stocks_url(@car_part), notice: "Stock was seccessfully destroyed."
  end

  private
    def set_stock
      @stock = Stock.find(params.expect(:id))
    end

    def stock_params
      params.expect(stock: [ :amount ])
    end
end
