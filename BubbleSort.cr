def bubblesort(array)
	array.each_index { |i|
		(array.size-1).downto(i) { |j|
		# Least to Greatest
		if array[j - 1] > array[j] 
                temp = array[j]
                array[j] = array[j - 1]
                array[j - 1] = temp
			end
		}
	}
	array
end

def bubblesort(array)
	array.each_index { |i|
		(array.size-1).downto(i) { |j|
		# Least to Greatest
		if array[j - 1] < array[j] 
                temp = array[j]
                array[j] = array[j - 1]
                array[j - 1] = temp
			end
		}
	}
	array
end
	
