require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

larry = Student.new("Larry")
elaine = Student.new("Elaine")
sylvie = Student.new("Sylvie")
harriet = Student.new("Harriet")

jones = Instructor.new("Mr. Jones")
howard = Instructor.new("Ms. Howard")
burgess = Instructor.new("Mr. Burgess")


elaine_boogie_boarding = BoatingTest.new(elaine, "Boogie Boarding FUNdamentals", "passed", jones)
sylvie_intro_to_doggie_paddling = BoatingTest.new(sylvie, "Intro to Doggie Paddling", "passed", jones)


puts "Instructor.all works?"
puts Instructor.all.length === 3

puts "Student.all works?"
puts Student.all.length === 4

puts "student.add_boating_test works?"
larry_advanced_breath_holding = larry.add_boating_test("Advanced Breath Holding", burgess)
sylvie_floating_101 = sylvie.add_boating_test("Floating 101", jones)
puts larry_advanced_breath_holding.student === larry

puts "Student.find_student works?"
puts Student.find_student("Harriet") === harriet


puts "pass_student works?"
sylvie_boogie_boarding = howard.pass_student(sylvie, "Boogie Boarding FUNdamentals")
puts sylvie_boogie_boarding.test_status === "passed"

puts "fail_student works?"
sylvie_advanced_breath_holding = jones.fail_student(sylvie, "Advanced Breath Holding")
puts sylvie_advanced_breath_holding.test_status === "failed"


puts "grade_percentage works?"
 puts sylvie.grade_percentage === 0.5

puts "BoatingTest.all works?"
puts BoatingTest.all.length === 6

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

