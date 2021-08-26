# frozen_string_literal: true

def merge_arrays(a1, a2)
  i = 0
  j = 0
  new_arr = []
  while i < a1.length && j < a2.length
    if a1[i] < a2[j]
      new_arr << a1[i]
      i += 1
    else
      new_arr << a2[j]
      j += 1
    end
  end
  new_arr.concat(a2[j..-1]) if i == a1.length
  new_arr.concat(a1[i..-1]) if j == a2.length
  new_arr
end

def merge_sort(arr)
  n = arr.length
  if n < 2
    arr
  else
    left_array = merge_sort(arr[0..(n / 2 - 1)])
    right_array = merge_sort(arr[n / 2..-1])
    merge_arrays(left_array, right_array)
  end
end

p merge_sort([5, 2, 1, 3, 6, 4])
