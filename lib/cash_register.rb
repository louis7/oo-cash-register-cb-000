
class CashRegister
attr_accessor :total , :discount
attr_reader :items

def initialize (discount=0)
  @discount = discount
  @total = 0
  @items = []

end




def add_item (title, price,quantity=1)
  @title = title
  @price = price
  @quantity = quantity
  @total = @total + price * @quantity
  @@lastupdate = price * @quantity
  @items << @title
   if quantity >1
    new_quantity = @quantity-1
    new_quantity.times do @items<< @title
  end




end



def void_last_transaction
  @total = @total- @@lastupdate
end






end



def apply_discount
  @dollar_amount = @total*@discount/100
  @total = @total-@dollar_amount
 return  "After the discount, the total comes to $#{@total}."

end

end
