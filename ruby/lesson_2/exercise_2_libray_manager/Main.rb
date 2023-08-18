require './Document'
require './Book'
require './Magazine'
require './News'

document = Document.new('A01', 'PhuongNam', 2, 10_000)
book = Book.new('E01', 'HoaBinh', 5, 7000, 'Duy', 195)
magazine = Magazine.new('K01', 'Trenho', 6, 20_000, 5, 12)
news = News.new('G01', 'PhuongNam', 8, 15_000, 30)

puts 'Thông tin của từng loại: '
infos = [document, book, magazine, news]

for info in infos do
  info.display
  puts ''
end

a = 0
prices = [document, book, magazine, news]
for price in prices do
  a += price.rental_fee(borrow_hours = 2)
end
puts "Tổng tiền thuê tài liệu : #{a}"
