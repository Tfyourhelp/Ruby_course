require './Document'

class Magazine < Document
  attr_accessor :issue_number, :issue_month

  def initialize(document_code, pulisher_name, number_of_release, price, issue_number, issue_month)
    super(document_code, pulisher_name, number_of_release, price)
    @issue_number = issue_number
    @issue_month = issue_month
  end

  def rentalfee(borrowed_hours)
    super + 10_000
  end

  def display
    super
    print "Số phát hành : #{@issue_number} , "
    print "Tháng phát hành : #{@issue_month} "
  end
end
