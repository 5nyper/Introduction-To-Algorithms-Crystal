def bubblesort(input)
  input.dup.tap do |array|
    array.each_index do |i|
      (array.size - 1).downto(i) do |j| 
        #Least to Greatest
        array[j], array[j - 1] = array[j - 1], array[j] if yield array[j - 1], array[j]
      end
    end
  end
end

def bubblesort_ascending(input)
  bubblesort(input) {|a, b| a > b }
end


def bubblesort_descending(input)
  bubblesort(input) {|a, b| a < b }
end
