# frozen_string_literal: true

def merge_sort(arr)
  sorted_arr = []
  return arr if arr.length < 2

  left_arr =  merge_sort(arr[0...arr.length / 2])
  right_arr = merge_sort(arr[arr.length / 2..arr.length])
  a = 0
  b = 0
  while a < left_arr.length && b < right_arr.length
    if left_arr[a] < right_arr[b]
      sorted_arr << left_arr[a]
      a += 1
    else
      sorted_arr << right_arr[b]
      b += 1
    end
  end
  if a >= left_arr.length
    sorted_arr.concat(right_arr[b..right_arr.length])
  else
    sorted_arr.concat(left_arr[a..left_arr.length])
  end

  sorted_arr
end
