
class CashRegister

    attr_accessor :total, :employee_discount, :items, :last_transaction

    def initialize(employee_discount = 0)
        @total = 0
        @employee_discount = employee_discount
        @items = []
    end

    def total
        @total
    end

    def add_item(title, price, quantity = 1)
        @last_transaction = (price * quantity)
        @total += @last_transaction
        quantity.times do 
            self.items << title
        end
    end 

    def apply_discount
        if (self.employee_discount != 0)
            percentage = (100 - self.employee_discount.to_f) / 100
            @total = (@total * percentage).to_i
            "After the discount, the total comes to $#{@total}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        @total -= @last_transaction
    end

end