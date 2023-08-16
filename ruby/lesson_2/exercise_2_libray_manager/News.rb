require './Document'

class News < Document
  attr_accessor :issuedate

  def initialize(document_code, pulisher_name, _numberof_release, price, issue_date)
    super(document_code, pulisher_name, number_of_release, price)
    @issue_date = issue_date
  end

  def rental_fee(borrowed_hours)
    super(borrowed_hours)
    fee = borrowed_hours + 20_000
  end

  def display
    super
    print "Ngày phát hành : #{@issue_date} "
  end
end

if $PROGRAM_NAME == __FILE__
  a = News.new('G01', 'PhuongNam', 8, 15_000, 30)
  puts "#{a.rental_fee(10)}"
end
