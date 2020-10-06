# 下記のコードが何をしているかを説明してください・・・（A）
seats_and_groups = gets.split(/\s/)
12 6
# 下記のコードが何をしているかを説明してください・・・（B）
empty_seat = [*1..(seats_and_groups[0].to_i)]
1..12
# 下記のコードが何をしているかを説明してください・・・（C）
seats_count = empty_seat.count
12
# 下記のコードが何をしているかを説明してください・・・（D）
number_of_visitors = seats_and_groups[1].to_i
6
# 下記のコードが何をしているかを説明してください・・・（E）
[*1..number_of_visitors].each do
  1..6
  # 下記のコードが何をしているかを説明してください・・・（F）
  used_seats = gets.split(/\s/)
  4 6
  4 8
  4 10
  # 下記のコードが何をしているかを説明してください・・・（G）
  users = used_seats[0].to_i
  4
  4
  4
  # 下記のコードが何をしているかを説明してください・・・（H）
  seating_number = used_seats[1].to_i
  6
  8
  10
  # 下記のコードが何をしているかを説明してください・・・（I）
  fill_last_number = ((seating_number + users) - 1)
  6 + 4 - 1 = 9
  8 + 4 - 1 = 11
  10 + 4 - 1 = 13
  # 下記のコードが何をしているかを説明してください・・・（J）
  if fill_last_number > seats_count
    9 > 12
    11 > 12
    13 > 12
    # 下記のコードが何をしているかを説明してください・・・（K）
    # （下記のコードは理解が難しいので、下記にヒントを載せます）
    # 「今回のグループが最後に着席する座席の番号」 = 「今回のグループが最後に着席する座席の番号」-「そもそもの座席の総数」となる（円卓だから）。
    # 例えば、fill_last_number == 13で、seats_countが12だったら、1 = 13 - 12となり、座席番号が１の座席に最後の人間が座る。
    fill_last_number = fill_last_number - seats_count
     9 - 12 = -3 x ここは番号１に戻す
     13 - 12 = 1
    # （下記のコードは理解が難しいので、下記にヒントを載せます）
    # next_seat_candidateは、「その座席に既に人が座っていないか？」を判断するための配列
    # ([*1..seats_count] - empty_seat)は、（「全ての座席」-　「まだ人が座っていない座席」）の意味。つまり、「既に人が座っている座席」の数字が、([*1..seats_count] - empty_seat)
    # [*seating_number..seats_count]は、[*「今回のグループが最初に着席する座席の番号」..「最後の座席の番号」]の意味
    # [*1..fill_last_number]は、[*「１（最初の座席）」..「今回のグループが最後に着席する座席の番号」]の意味
    # なので、next_seat_candidate = ([*1..seats_count] - empty_seat) + [*seating_number..seats_count] + [*1..fill_last_number]は、
    # next_seat_candidate = 「既に人が座っている座席」+ [*「今回のグループが最初に着席する座席の番号」..「最後の座席の番号」] + [*「１（最初の座席）」..「今回のグループが最後に着席する座席の番号」]となる。
    # つまり、 next_seat_candidateの配列の中に、同じ数字が含まれていれば、「既に埋まっている座席に新たなグループの人間が座ろうとしている」ということになる
    next_seat_candidate = ([*1..seats_count] - empty_seat) + [*seating_number..seats_count] + [*1..fill_last_number]
    　　[1..12] - [] + [10..12] + [1..1] = [2..9]
  else
    # 下記のコードが何をしているかを説明してください・・・（L）
    # （下記のコードは理解が難しいので、下記にヒントを載せます）
    # next_seat_candidate = 「既に人が座っている座席」+ [*「今回のグループが最初に着席する座席の番号」..「今回のグループが最後に着席する座席の番号」]となる
    # つまり、 next_seat_candidateの配列の中に、同じ数字が含まれていれば、「既に埋まっている座席に新たなグループの人間が座ろうとしている」ということになる
    next_seat_candidate = ([*1..seats_count] - empty_seat) + [*seating_number..fill_last_number]
      ([1..12] - [1..12]) = [0] + [6..9]
      [1..12] - [1,2,3,4,5,10,11,12] =[6,7,8]   + [8..11] = [6,7,8,8..11]
  end
  # 下記のコードが何をしているかを説明してください・・・（M）
  if next_seat_candidate.count == next_seat_candidate.uniq.count
     4 == 4
     7 == 6
     8 == 8
    # 下記のコードが何をしているかを説明してください・・・（N）
    if ((seating_number + users) - 1) > seats_count
      (6 + 4 - 1 =) 9 > 12
      (10 + 4 - 1 =) 13 > 12

      # 下記の二行のコードが何をしているかを説明してください・・・（O）
      empty_seat = empty_seat - [*1..fill_last_number]
           [1..5,10..12] - [1..1] = [2..5,10..12]
      empty_seat = empty_seat - [*seating_number..seats_count]
         [2..5,10..12] - [10..12] = [2..5]
    else
      # 下記のコードが何をしているかを説明してください・・・（P）
      empty_seat = empty_seat - [*seating_number..fill_last_number]
        = [1..12] - [6..9]
          [ ]  = [10..12] - [6..12]
    end
  end
end
# 下記のコードが何をしているかを説明してください・・・（Q）
puts seats_count - empty_seat.count
   12 - 8 = 4
