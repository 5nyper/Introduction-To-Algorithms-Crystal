a = [9,8,6,1,2,5,4,3,9,50,12,11]
n = a.size - 1
 
n.times do |i|
  index_min = i
 
  (i + 1).upto(n) do |j|
    index_min = j if a[j] < a[index_min]
  end
  
  a[i], a[index_min] = a[index_min], a[i] if index_min != i
end

puts a
