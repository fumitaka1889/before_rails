class School
  attr_accessor :name, :address
end

a_school = School.new
a_school.name = "A学校"
puts(a_school.name)
b_school = School.new
b_school.name = "B学校"
puts(b_school.name)
