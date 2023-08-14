require './Document.rb'

class Book < Document
  attr_accessor :authorname, :numberofpage
  def initialize(documentcode, pulishername, numberofrelease, price, authorname, numberofpage)
    super(documentcode,pulishername,numberofrelease,price)
    @authorname = authorname
    @numberofpage = numberofpage
  end
end