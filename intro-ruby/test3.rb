for i in 1..40
if i % 3 == 0 || i.to_s.include?("3")
  puts "Hoge"
else
  puts i
end
end
