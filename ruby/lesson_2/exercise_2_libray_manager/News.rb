require './Document.rb'

class News < Document
    attr_accessor :issuedate
  
    def initialize(documentcode, pulishername, numberofrelease, price, issuedate)
        super(documentcode, pulishername, numberofrelease, price)
        @issuedate = issuedate
    end

    def rentalfee(borrowedhours)
      super(borrowedhours)
      return fee = borrowedhours + 20000
    end
  end

if $PROGRAM_NAME == __FILE__
  a = News.new("G01", "PhuongNam", 8, 15000,30)
  puts "#{a.rentalfee(10)}"
end