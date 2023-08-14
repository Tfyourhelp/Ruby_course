require './Document.rb'
require './Book.rb'
require './Magazine.rb'
require './News.rb'

def infomation(obje)
  obje.display
end

def computeprice(obje,borrowhours=10)
  obje.rentalfee(borrowhours)
end

document = Document.new("A01", "PhuongNam", 2, 10000)
book = Book.new("E01", "HoaBinh", 5, 7000,"Duy",195)
magazine = Magazine.new("K01", "Trenho", 6, 20000,5,12)
news = News.new("G01", "PhuongNam", 8, 15000,30)

puts "Thông tin của từng loại: "
infos = [infomation(document),infomation(book),infomation(magazine),infomation(news)]

for info in infos do
end

a = 0
prices = [computeprice(document),computeprice(book),computeprice(magazine),computeprice(news)]
for price in prices do
  a+= price
end
puts "Tổng tiền thuê tài liệu : #{a}"