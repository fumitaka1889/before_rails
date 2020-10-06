def introduce(name,age)
  puts "私の名前は#{name}です。年齢は#{age}です。"
end
puts "名前を入力"
name = gets
puts "年齢を入力"
age = gets.to_i
introduce(name,age)
