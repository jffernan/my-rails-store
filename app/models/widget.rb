class Widget < ApplicationRecord
  def self.search(name)
    if name
      name=name.upcase_first
      where('name LIKE ?', "%#{name}%")
    else
      all
    end
  end

  def self.alphabetical_order #ActiveRecord method to alphabetize lists
    Widget.order(name: :asc)
  end

end
