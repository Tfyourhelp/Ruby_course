def bubble_sort_array(array)
    n = 0
    until (n == ((array.length-1)).to_i) do
      (0..(array.length-2)).each do |i|
        if array[i+1] < array[i]
          array[i], array[i + 1] = array[i + 1], array[i]
        end
      end
      n+=1
      # puts array.inspect
    end
    array.inspect
  end


def quick_sort(array)
  return array if array.length <= 1

  pivot = array[-1]
  left = []
  right = []

  array.each do |a|
    if a < pivot
      left << a
    elsif a > pivot
      right << a
    end
  end

  sorted_left = quick_sort(left)
  sorted_right = quick_sort(right)

  return sorted_left + [pivot] + sorted_right
end

array = [4, 1, 7, -2, 100, 25, -12, 43, 200]
puts sorted_array = quick_sort(array).inspect
puts bubble_sort_array(array)
