
# `Student` class:
# * should initialize with `first_name`
# * `Student.all` should return all of the student instances
# * `Student#add_boating_test` should initialize a new boating test with a Student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)
# * `Student.find_student` will take in a first name and output the student (Object) with that name
# * `Student#grade_percentage` should return the percentage of tests that the student has passed, a Float (so if a student has passed 3 / 9 tests that they've taken, this method should return the Float `33.33`)
require 'pry'

class Student

    attr_reader :first_name

    @@all = []

    def initialize(first_name)
        @first_name = first_name

        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(test_name, test_status = "pending", instructor)
        BoatingTest.new(self, test_name, test_status, instructor)
    end

    def self.find_student(student_name)
        @@all.find do |student|
            student.first_name == student_name
        end
    end

    # helper method
    def tests
        BoatingTest.all.select do |test|
            test.student == self
        end
    end

    def grade_percentage
        passed_tests = self.tests.select do |test|
            test.test_status == "passed"
        end
        passed_tests.length.to_f / self.tests.length
    end
end

