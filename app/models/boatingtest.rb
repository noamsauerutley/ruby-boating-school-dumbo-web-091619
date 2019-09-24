# --< ~*~ connector ~*~ >--

# `BoatingTest` class:
# * should initialize with Student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)
# * `BoatingTest.all` returns an array of all boating tests

class BoatingTest

    attr_reader :student, :name, :instructor
    attr_accessor :test_status
    @@all = []

    def initialize(student, name, test_status = "pending", instructor)
        @student = student
        @name = name
        @test_status = test_status
        @instructor = instructor
        @@all << self
    end

    def self.all
        @@all
    end

end
