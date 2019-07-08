
class CashRegister
  attr_accessor :total, :employee_discount, :items

  def initialize (employee_discount = nil)
    @total = 0.00
    @employee_discount = employee_discount
    @items = []
  end
  def discount
    self.employee_discount
  end
  def items
    @items
  end
  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    quantity.times do
      items << title
    end
  end
  def apply_discount
    if @employee_discount
      @total = @total * (1 - @employee_discount / 100)
      "After the discount, the total comes to $#{@total}"
    else
      "There is no discount to apply."
    end
  end




'class CashRegister
  attr_accessor :total

  def initialize(total = 0)
    @total = total
  end

  def discount
    employee_discount = 20
    employee_discount
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
  end

  def apply_discount

  end
end
'