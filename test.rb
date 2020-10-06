# number = [1,2,3,4]
# sum = 0
# number.each do |n|
#   sum_value = n.even? ? n * 10 : n
#   puts sum_value
#   sum += sum_value
#   end
# #
# def buy_burger(menu,option = {})
#   drink = option[:drink]
#   potato = option[:potato]
#   puts menu
#   puts drink
#   puts potato
# end
#
# buy_burger('cheese',drink: true, potato: true)

def create_mail(recv)
  puts recv + "様"
  puts "PR企画の小林です。"
  puts "今月の請求書を送ります。"
end

create_mail "山本"
create_mail "宜野座"
