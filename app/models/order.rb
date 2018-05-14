class Order < ApplicationRecord
  enum pay_type: {
    "Check"          => 0,
    "Credit card"    => 1,
    "PayPal" => 2
  }

  has_many :order_items
  belongs_to :user, optional: true
  before_save :update_total
  before_create :update_status

  def add_order_items_from_cart(cart)
    order_items.each do |item|
      item.cart_id = nil
      order_items << item
    end
  end

  def calculate_total
    self.order_items.collect { |item| item.widget.price * item.quantity }.sum
  end

  private

  def update_status
    if self.status == nil?
      self.status = "In progress"
    end
  end

  def update_total
    self.total_price = calculate_total
  end

end
