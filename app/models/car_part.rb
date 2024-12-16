class CarPart < ApplicationRecord
  belongs_to :part_type
  has_many :stocks
  has_many_attached :images do |attachable|
    attachable.variant :thumb, resize_to_limit: [ 50, 50 ]
    attachable.variant :show, resize_to_limit: [ 800, 800 ]
  end
end
