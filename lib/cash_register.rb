class CashRegister
    attr_accessor :total, :discount, :basket, :last_price


    def initialize(discount=nil)
        @discount = discount
        @total = 0
        @basket = []
        @last_price = 0

    end

    def add_item(title, price, quantity = 1)
        quantity.times do
            @basket<< title
        end
        @last_price = price * quantity
        @total += price * quantity
    end

    def apply_discount
        if @discount == nil
            "There is no discount to apply."
        else
            @total = @total - (@total * @discount / 100)
            "After the discount, the total comes to $#{total}."
        end
    end
    
    def items
       @basket
    end

    def void_last_transaction
        @total -= @last_price
    end
    
end