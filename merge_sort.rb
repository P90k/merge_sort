# frozen_string_literal: true

def merge_sort(arr)
  sorted_arr = []
  return arr if arr.length < 2

  left_arr =  merge_sort(arr[0...arr.length / 2])
  right_arr = merge_sort(arr[arr.length / 2..arr.length])

  until left_arr.empty? || right_arr.empty?
    sorted_arr << (left_arr[0] < right_arr[0] ? left_arr.shift : right_arr.shift)

  end
  sorted_arr += left_arr.empty? ? right_arr : left_arr

  sorted_arr
end
