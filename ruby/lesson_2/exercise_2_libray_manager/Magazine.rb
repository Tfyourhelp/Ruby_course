require './Document.rb'

class Magazine < Document
  attr_accessor :issuenumber, :issuemonth
  
  def initialize(documentcode, pulishername, numberofrelease, price, issuenumber, issuemonth)
    super(documentcode,pulishername,numberofrelease,price)
    @issuenumber = issuenumber
    @issuemonth = issuemonth
  end

  def rentalfee(borrowedhours)
    super + 10000
  end
  

end