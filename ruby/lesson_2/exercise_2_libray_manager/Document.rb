class Document
  attr_accessor :documentcode, :pulishername, :numberofrelease, :price

  def initialize(documentcode, pulishername, numberofrelease, price)
    @documentcode = documentcode
    @pulishername = pulishername
    @numberofrelease = numberofrelease
    @price = price
  end

  def rentalfee(borrowedhours)
    return fee = @price*borrowedhours
  end

  def display()
    print "Mã tài liệu : #{@documentcode} , "
    print "Tên nhà xuất bản : #{@pulishername} , "
    print "Số bản phát hành : #{@numberofrelease} , "
    print "Đơn giá : #{@price} "
    puts ""
  end
  
end
