class OrderProcessor

  def process_order(order)
    customer = order.customer
    items = order.items


    order.existence_check()
    total_price = order.total_order_value()
    total_price = order.discount_apply(total_price)
    # Tạo hóa đơn
    invoice = create_invoice(customer, items, total_price)
    # Gửi email xác nhận
    send_confirmation_email(customer, invoice)

  end

  private

  def create_invoice(customer, items, total_price)
    # Tạo hóa đơn và lưu vào cơ sở dữ liệu
    # ...
  end

  def send_confirmation_email(customer, invoice)
    # Gửi email xác nhận cho khách hàng
    # ...
  end
end


class Order
  attr_accessor :customer, :items
  def initialize(customer, items)
    @customer = customer
    @items = items
  end

  # Kiểm tra có mặt hàng hay không
  def existence_check()
    raise "Không có mặt hàng nào!" if @items.empty?
    # Kiểm tra tồn kho
    @items.each do |item|
      item.item_inventory_check()
    end
  end

  # Tính tổng giá trị đơn hàng
  def total_order_value()
    total_price = 0
    @items.each do |item|
      total_price += item.price * item.quantity
    end
    return total_price
  end

  # Áp dụng giảm giá nếu có
  def discount_apply(total_price)
    total_price -= total_price * @customer.discount_percent if @customer.has_discount?
    return total_price
  end
end

class Customer
  attr_accessor :has_discount, :discount_percent

  def initialize(has_discount, discount_percent)
    @has_discount = has_discount
    @discount_percent = discount_percent
  end

  def has_discount?
    has_discount
  end
end

class Item
  attr_accessor :name, :price, :quantity, :available_quantity

  def initialize(name, price, quantity, available_quantity)
    @name = name
    @price = price
    @quantity = quantity
    @available_quantity = available_quantity
  end

  # Kiểm tra tồn kho
  def item_inventory_check()
    raise "Không đủ hàng trong kho cho #{@name}" if @available_quantity < @quantity
  end

end