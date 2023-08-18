class Document
  attr_accessor :document_code, :pulisher_name, :number_of_release, :price

  def initialize(document_code, pulisher_name, number_of_release, price)
    @document_code = document_code
    @pulisher_name = pulisher_name
    @number_of_release = number_of_release
    @price = price
  end

  def rental_fee(borrowed_hours)
    fee = @price * borrowed_hours
  end

  def display
    print "Mã tài liệu : #{@document_code} , "
    print "Tên nhà xuất bản : #{@pulisher_name} , "
    print "Số bản phát hành : #{@numberof_release} , "
    print "Đơn giá : #{@price} , "
  end
end
