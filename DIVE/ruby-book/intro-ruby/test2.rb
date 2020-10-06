def bigger(a, b)
  if a > b
    a
  else
    b
  end
end
def biggest(a, b, c)
  # 最大値を返却する処理を記述する
  number = bigger()
  if number > c
    number
  else
    c
  end
end
def median(a, b, c)
  # 最大値を代入する
  biggest_number = biggest()
  # 最小値をみつけ、最小値でなかった方を返却する
  if biggest_number == a
    return c
  elsif biggest_number == b
    return b
  elsif biggest_number == c
    return a
  end
end
puts(median(5,7,2))
puts(median(7,3,2))
puts(median(1,4,2))
