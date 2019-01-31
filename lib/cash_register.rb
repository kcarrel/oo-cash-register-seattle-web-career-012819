class CashRegister
  attr_accessor :total, :discount, :items
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity = 1)
    i = 0
    loop do 
    self.items << title
    i += 1 
      if i >= quantity 
        break
      end 
    end 
    self.total += price * quantity
  end
  
  def apply_discount
    if discount > 0 
      self.total -= self.total * discount/100
      "After the discount, the total comes to $#{total}."
    else 
      "There is no discount to apply."
    end 
  end 
  
  def items
    @items
  end 

  def total
   @total 
  end
  
  def void_last_transaction

  end 
end 
