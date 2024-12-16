class AdminController < ApplicationController
  before_action :authenticate_admin!
  layout "admin"

  def index
    @orders = Order.where(fulfilled: false).order(created_at: :desc).take(5)
    @stats = {
      sales: Order.where(created_at: Time.now.midnight..Time.now).count,
      revenue: Order.where(created_at: Time.now.midnight..Time.now).sum(:total_price).round(),
      avg_sale: Order.where(created_at: Time.now.midnight..Time.now).average(:total_price).round()
    }
  end
end
