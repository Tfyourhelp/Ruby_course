require './Cookieclass'
require './Creammodul' #require này đã bao gồm luôn cả include
# cô lập những thứ giống nhau 
# tái sử dụng khi trùngn hau
cookie = Cookie.new
p cookie.cream?

p Trig::PI
p Trig.cos(5)

a = "00:20:15AM"
puts "#{a[8..10]}"
puts Converter.time_format("00:20:15AM")
puts Converter.time_format("00:20:15PM")

