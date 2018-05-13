class Widget < ApplicationRecord

  def self.alphabetical_order #ActiveRecord method to alphabetize lists
    Widget.order(name: :asc)
  end
  
end
