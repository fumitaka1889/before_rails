blogs = []
while true
  puts "以下より行う操作を選んでください"
  puts "１：ブログを作成する"
  puts "２：作成されたブログを見る"
  puts "３：ブログアプリを終了する"
  number = gets.to_i
  if number == 1
    blog = {}
    puts "１：ブログを作成する"
    puts "ブログのタイトルを入力してください"
    blog[:title] = gets
    puts "ブログの本文を入力してください"
    blog[:content] = gets
    blogs << blog
    puts "------入力確認------"
    puts "タイトル：#{blog[:title]}"
    puts "本文：#{blog[:content]}"
  elsif number == 2
    puts "２：作成されたブログを見る"
    blogs.each do |blog|
      puts "タイトル： #{blog[:title]}"
      puts "本文： #{blog[:content]}"
      puts "------------"
    end
  elsif number == 3
    puts "３：ブログアプリを終了する"
    break
  else
    puts "１〜３の数字を入力してください"
  end
end
