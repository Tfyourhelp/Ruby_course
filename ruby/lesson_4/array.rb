arr = [10, 5, 7, 3, 2, 2, 1]
#1/
max_value = arr.max
puts "Giá trị lớn nhất là #{max_value}"
min_value = arr.min
puts "Giá trị nhỏ nhất là #{min_value}"
#2/
reversed_array = arr.reverse
puts "Mảng sau khi đảo ngược #{reversed_array} "

#3/
unique_element = arr.uniq
puts "Phần tử duy nhất trong mảng #{unique_element}"

#4/
def get_even(arr)
  even_arr = []
  arr.each do |element|
    if element.even?
      even_arr << element
    end
  end
  return even_arr
end
even_arr = get_even(arr)
puts "Mảng số chẵn là #{even_arr}"

#5/
array1 = [1, 2, 3]
array2 = [4, 5, 6]
array1.concat(array2)
puts "Mảng sau khi nối là #{array1}"

