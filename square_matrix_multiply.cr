def smm(a, b)
  result = [] of Int32
  (a.length).times do |i|
    result[i] = [] of Int32
    (b[0].length).times do |j|
      sum = 0
      (a[0].length).times do |k|
        sum += a[i][k] * b[k][j]
      end
      result[i][j] = sum
    end
  end
  result
end
