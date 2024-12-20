class CarPart < ApplicationRecord
  belongs_to :part_type
  has_many :stocks
  has_many :order_car_parts
  has_many_attached :images do |attachable|
    attachable.variant :thumb, resize_to_limit: [ 50, 50 ]
    attachable.variant :main, resize_to_limit: [ 200, 200 ]
    attachable.variant :show, resize_to_limit: [ 300, 300 ]
  end
end
