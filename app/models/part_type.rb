class PartType < ApplicationRecord
  has_one_attached :image do |attachable|
    attachable.variant :thumb, resize_to_limit: [ 50, 50 ]
    attachable.variant :show, resize_to_limit: [ 800, 800 ]
  end
end
