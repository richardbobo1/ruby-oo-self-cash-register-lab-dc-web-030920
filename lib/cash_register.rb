require 'pry'

class CashRegister

    attr_accessor :total, :price, :last_transaction,  :discount, :items 
    #attr_reader :discount 
    #attr_writer :last_transaction



    def initialize(discount=0)
        @total = 0.0 
        @discount = discount
        @items = []

    end 




    def add_item(title, price, quantity=1)
        self.total +=  price * quantity

        quantity.times do 
            items << title 
        end 
        
        self.last_transaction = price * quantity
    end 




    def apply_discount 
        
        if self.discount > 0  
            #binding.pry 
           discounted_price = (self.total * self.discount)/100.to_f 
            @total -=  discounted_price
            return "After the discount, the total comes to $#{total.to_i}."
        else 
            return "There is no discount to apply."
        end
    end


    def void_last_transaction 
        @total -= self.last_transaction
    end 




end 





# def checkout(discount=0)
#     total = 0
#     #the shopping_cart method holds an array of all the user's items
#     shopping_cart.each do |item|
#       total += item.price
#     end
   
#     if discount == 10
#       total = total - total * 10 / 100.00
#     elsif discount == 20
#       total = total - total * 20 / 100.00
#     elsif discount == 50
#       total = total - total * 50 / 100.00
#     end
   
#     total
   
#   end