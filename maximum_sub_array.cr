def max_subarray( arr )
  max = 0
  (0..arr.length-1).each do |start|
    result = 0
 
    (start..arr.length-1).each do |num|
      result += arr[num]
      max = result if result > max
    end
  end
 
  max
end
