class CashRegister
  attr_accessor :total, :discount, :items, :transaction_list
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @items = []
    @transaction_list = []
  end
  
  def add_item(title, price, quantity = 1)
    i = 0
    loop do 
    self.items << title
    self.transaction_list << price 
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
    @total -= self.transaction_list(self.transaction_list.length -1)
  end 
end 
