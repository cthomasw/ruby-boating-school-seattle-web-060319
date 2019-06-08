require 'pry'

class Instructor

	attr_accessor :name, :add_boating_test

	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

	def self.all
		@@all
	end

	def pass_student(student, boating_test_name)
		all_tests = BoatingTest.all.select { |test| test == boating_test_name && test.student == student}
	
		if all_tests.count != 0
			#binding.pry
			all_tests[0].boating_test_status = "passed"

		else BoatingTest.new(student, boating_test_name, "passed", self)
		end
	end

	def fail_student(student, boating_test_name)
		all_tests = BoatingTest.all.select { |test| test == boating_test_name && test.student == student}

		if all_tests.count != 0
			all_tests[0].boating_test_status = "failed"
		else BoatingTest.new(student, boating_test_name, "failed", self)
		end
	end

end



