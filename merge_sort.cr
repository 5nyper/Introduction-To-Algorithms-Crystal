def mergesort(list)
  return list if list.size <= 1
  mid = list.length / 2
  left  = list[0, mid]
  right = list[mid, list.length-mid]
  merge(mergesort(left), mergesort(right))
end

def merge(left, right)
  sorted = [] of Int32
  until left.empty? || right.empty?
    if left.first <= right.first
      sorted << left.shift
    else
      sorted << right.shift
    end
  end
  sorted.concat(left).concat(right)
end

puts mergesort([1,4,2,7,9,5,6,2])
