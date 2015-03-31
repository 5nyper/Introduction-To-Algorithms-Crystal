def insert(array)
	array.each_index { |i|
		key, j = array[i], i - 1
		while j >= 0 && array[j] > key
			array[j + 1] = array[j]
            j = j - 1
		end
		array[j + 1] = key;
	}
	array
end

def insert(array)
	array.each_index { |i|
		key, j = array[i], i - 1
		while j >= 0 && array[j] < key
			array[j + 1] = array[j]
            j = j - 1
		end
		array[j + 1] = key;
	}
	array
end
