class User
  attr_accessor :name, :address, :email

  def profile
    "#{name}(#{address})"
  end

end

# list = 1..100
# target_number = 42
#
# for n in list do
#   puts("#{n}回目の探索です ")
#
#   if n == target_number
#     puts("#{target_number}を見つけました ")
#     break
#   end
# end
