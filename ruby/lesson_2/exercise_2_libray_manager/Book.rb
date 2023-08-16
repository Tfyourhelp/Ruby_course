require './Document'

class Book < Document
  attr_accessor :author_name, :number_of_page

  def initialize(document_code, pulisher_name, number_of_release, price, author_name, number_of_page)
    super(document_code, pulisher_name, number_of_release, price)
    @author_name = author_name
    @number_of_page = number_of_page
  end

  def display
    super
    print "Tên tác giả : #{@author_name} , "
    print "Số trang : #{@number_of_page} "
  end
end
