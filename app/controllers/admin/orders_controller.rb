class Admin::OrdersController < AdminController
  before_action :set_order, only: %i[ show edit update destroy ]
  def index
    @unfulfilled_orders = Order.where(fulfilled: false).order(created_at: :asc)
    @fulfilled_orders = Order.where(fulfilled: true).order(created_at: :asc)
  end

  def show
  end

  def new
    @order = Order.new
  end

  def edit
  end

  def create
    @order = Order.new(order_params)

    if @order.save
      redirect_to admin_order_path(@order), notice: "Order successfully created."
    else
      render :new, alert: "Error when craeting order"
    end
  end

  def update
    if @order.update(order_params)
      redirect_to admin_order_path(@order), notice: "Order successfully updated."
    else
      render :edit, alert: "Error when updating order"
    end
  end

  def destroy
    @order.destroy!

    redirect_to admin_orders_path, notice: "Order was seccessfully destroyed."
  end

  private
    def set_order
      @order = Order.find(params.expect(:id))
    end

    def order_params
      params.expect(order: [ :customer_email, :fulfilled, :total_price, :address ])
    end
end
