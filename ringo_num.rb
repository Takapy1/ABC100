d, n = gets.split(" ").map(&:to_i)
n = 101 if n == 100
puts n * 100 ** d

# 解説
=begin
１００でちょうどD回割り切れつせいの整数の中でN番目のものは一般化するとN*100**D
ただここでNが100の時を考えなければいけない
例えば100でちょうど１回割り切れる整数で１００番目のものは
100*100**1=10000になる。これは２回割り切れてしまうのでDとの矛盾が生じる。
よってN=100の時、N = 101にしないといけない 
=end

# 解答１
# d, n= gets.split.map(&:to_i)
# if n == 100
#   n = 101
# end
# puts (100 ** d) * n 

# # 解答２
# d, n = gets.split.map(&:to_i)
# n = 101 if n == 100
# puts 100 ** d * n