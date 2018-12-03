# require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items
  
  # @@all = []
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity=1)
    self.total += price * quantity
    self.items ||= []
    quantity.times do
      self.items << title
    end
    self.items
    # @@all << title
  end
  
  def apply_discount
    if discount == 0
      "There is no discount to apply."
    else
      @total -= total * (discount.to_f / 100)
      "After the discount, the total comes to $#{total.to_i}."
    end
  end
  
  def void_last_transaction
    self.total -= total
  end
  
end

