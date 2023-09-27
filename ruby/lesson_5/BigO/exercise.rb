def reverse_string(string)
  reverse_string = ""
  array_string = string.chars
  array_string.each_with_index do |s, i|
    reverse_string << array_string[array_string.length-i-1]
  end
  return reverse_string
end

puts reverse_string("jịnjá")

"""
Phép toán : thêm giá trị vào mảng
Số lượng : độ dài của chuỗi
Phần tử chi phối : n (độ dài của chuỗi)
Kết luận: O(n)
"""



def sort_array(array)
  n = 0
  until (n == ((array.length-2)).to_i) do
    (0..(array.length-2)).each do |i|
      if array[i+1] < array[i]
        k = array[i]
        array[i] = array[i+1]
        array[i+1] = k
      end
    end
    n+=1
    puts array.inspect
  end
  array.inspect
end

array = [1 ,8 ,7 ,6 ,5 ,4 ,3 ,9]
puts sort_array(array)

"""
Phép toán : gán , so sánh 
Số lượng : Chạy n-2 lần , mỗi lần chạy n-2 (n bằng độ dài mảng)
Phần tử chi phối : n^2 
Kết luận: O(n^2)
"""