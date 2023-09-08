puts "=========Câu 1================"

def display_search_result(target, array , index)
  if index != -1
    puts "Target #{target} found in #{array.sort} at index #{index}"
  else
    puts "Target not found in #{array.sort}"  
  end
end

def linear_search(target, array)
  array.each_with_index do |value,index|
    if target == value
      return index
    end 
  return -1 
  end
end
  
array  = [1,4,5,2,1,5,6,7,2]
target = 1
index = linear_search(target, array)
display_search_result(target, array, index)

def binary_search(target, array)
  left = 0
  right = array.length - 1
  
  while left <= right 
    mid = (left + right) / 2
    if target == array[mid]
      return mid
    elsif target < array[mid]
      right = mid - 1
    elsif target > array[mid]
      left = mid + 1
    end
  end
  return -1 
end

array  = [1, 8, 5, 3, 7, 2]
target = 3
index = binary_search(target, array.sort)
display_search_result(target, array.sort, index)


puts "=========Câu 2================"

def reverse_binary_search(target, array)
  left = 0
  right = array.length - 1
  
  while left <= right 
    mid = (left + right) / 2
    # puts mid
    if target == array[mid]
      return mid
    elsif target > array[mid]
      right = mid - 1
    elsif target < array[mid]
      left = mid + 1
    end
  end
  return -1 
end

array  = [1, 8, 5, 3, 7, 2]
target = 3
index = reverse_binary_search(target, array.sort.reverse)
display_search_result(target, array.sort.reverse, index)

puts "============Câu 3================"

def display_min_max_result(array, min_value, min_value_index, max_value, max_value_index)
  puts "Max value found in #{array} is #{max_value} at index #{max_value_index}"
  puts "Min value found in #{array} is #{min_value} at index #{min_value_index}"
end

def find_max_value(array)
  max_value = array[0]
  max_value_index = 0
  # puts max_value
  array.each_with_index do |value, index|
    if value > max_value
      max_value_index = index
      max_value = value
    end 
  end
  return max_value, max_value_index
  
end

def find_min_value(array)
  min_value = array[0]
  min_value_index = 0

  array.each_with_index do |value,index|
    if value < min_value
      min_value_index = index
      min_value = value
    end 
  end
  return min_value, min_value_index
  
end

array  = [6,8, 5, 3, 7, 2]
min_value, min_value_index = find_min_value(array)
max_value, max_value_index = find_max_value(array)
display_min_max_result(array, min_value, min_value_index, max_value, max_value_index)
