def rotate_array(arr, k)
  n = arr.length
  k %= n 
  reverse(arr, 0, n - 1)
  reverse(arr, 0, k - 1)
  reverse(arr, k, n - 1)
 arr
end
def reverse(arr, start, stop)
  while start < stop
    arr[start], arr[stop] = arr[stop], arr[start]
    start += 1
    stop -= 1
  end
end
arr = [1, 2, 3, 4, 5]
k = 2
rotated_arr = rotate_array(arr, k)
puts rotated_arr.inspect
 