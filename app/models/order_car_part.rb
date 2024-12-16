class OrderCarPart < ApplicationRecord
  belongs_to :car_part
  belongs_to :order
end
