class OrderItem < ApplicationRecord
  belongs_to :widget
  belongs_to :order
end
