class Student

	attr_accessor :first_name

	@@all = []

	def initialize(first_name)
		@first_name = first_name
		@@all << self
	end

	def self.all
		@@all
	end

	def add_boating_test(boating_test_name, boating_test_status, instructor)
		BoatingTest.new(self, boating_test_name, boating_test_status, instructor)
	end

	def find_student(first_name)
		Student.all.select { |student| student.first_name == first_name}
	end

	def grade_percentage
		passed_count = 0
		total_tests = BoatingTest.all.select { |test| test.student == self }
		total_tests.select do |test|
			if test.boating_test_status == "passed"
				passed_count += 1.to_f
			end
		end
		passed_count / total_tests.count.to_f
	end

end
