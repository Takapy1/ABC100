=begin 
実装方法
# １
２人ともそれぞれ配列を持たせる。切れ目に番号を持たせて、とったらその番号を自分配列に入れる。ケーキ配列からは削除する
# 取る際に自分の配列を見て前後の要素があるか確認してあったら他の場所からとっていく。
取れる場所がもうない時は
16の横は15と1であるから注意

どこからどういう経緯で取り始めるか

２
取る数が少ない方を隣を取らない方法を全通り決める（一方が決まれば他方のおく場所も決まる）そして配列から削除する
残った要素が隣り合っているかどうかを調べる
16の横は15と1であるから注意
=end

# 2の方法でやってみる
# 小さい方の要素を返す
def smaller(a, b)
  min = a
  if b < min
    min = b
  end
end

# 配列の中に隣合う要素があったらtrueを返すメソッド
def next_to?(num, arr)
  if num == 16
    arr.include?(num-1) || arr.include?(1)
  elsif num == 1
    arr.include?(num+1) || arr.include?(16)
  else
    arr.include?(num+1) || arr.include?(num-1)
  end
end
# 入力
A, B = gets.split(" ").map(&:to_i)

# ケーキの配列を作成する
cake = Array.new
16.times do |i|
  cake << i + 1
end

# 取る数が少ない方の数を取り出す（p1は取れるパターンの要素数）
p1 = smaller(A, B)

# 最初の人が隣同士にならないようなパターンを全通り配列に格納する（条件：前の要素かつあとの要素ダメ、16は1とも隣ではダメ）
cakes = cake.combination(p1).to_a
cakes.each do |cake|
  boolean = cake.map{|c| next_to?(c, cake)}
  cakes.delete(cake) if boolean.any?
end
p cakes


# ケーキ配列から最初の人がとった要素を削除したものを配列に格納していく（２人目の取る方法全通り）

# ケーキ配列に隣同士になっている要素があるかどうか調べる（上手く取れる方法があった瞬間にbreakすればいい）

# 出力




# 隣同士のものがあったら配列からその配列を削除する（２次元配列）