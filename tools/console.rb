require_relative '../config/environment.rb'
require 'pry'
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
 
 
spongebob = Student.new("Spongebob")
patrick= Student.new("Patrick")
 
puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")
 
no_crashing = spongebob.add_boating_test("Don't Crash 101", "pending", puff)
power_steering_failure = patrick.add_boating_test("Power Steering 202", "failed", puff)
power_steering_pass = patrick.add_boating_test("Power Steering 201", "failed", krabs)
no_crashing2 = patrick.add_boating_test("Don't Crash 201", "pending", puff)

puff.pass_student(spongebob, no_crashing)

#binding.pry


0 #leave this here to ensure binding.pry isn't the last line