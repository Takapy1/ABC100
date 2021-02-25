# 受け取った配列の中から偶数のものだけ抽出した配列を返す
def even_arry(array)
  even_list = Array.new
  array.each do |a|
    if a.even?
      even_list << a
    end
  end
  even_list
end

# 受け取った整数の2で割れる回数を返す
def count_module2(num)
  count = 0
  while num % 2 == 0
    num /= 2
    count += 1
  end
  count
end

# 受け取った配列の中の各要素が2で割れる回数の合計を返す
def sum_module2(array)
  sum = 0
  array.each do |a|
    sum += count_module2(a)
  end
  sum
end

# 入力
N = gets.to_i
a = gets.split(" ").map(&:to_i)
# 配列から偶数のみ抽出する
even_array = even_arry(a)

# その配列の各要素の2で割れる回数の合計を出す
sum = sum_module2(even_array)
# 出力
puts sum
