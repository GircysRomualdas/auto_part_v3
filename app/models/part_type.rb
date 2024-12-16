class PartType < ApplicationRecord
  has_many :car_parts, dependent: :destroy
  has_one_attached :image do |attachable|
    attachable.variant :thumb, resize_to_limit: [ 50, 50 ]
    attachable.variant :main, resize_to_limit: [ 200, 200 ]
    attachable.variant :show, resize_to_limit: [ 800, 800 ]
  end
end
