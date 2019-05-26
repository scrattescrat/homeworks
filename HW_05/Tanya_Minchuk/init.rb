require_relative 'hw'
require_relative 'student'
require_relative 'mentor'

student = Student.new('Tanya Minchuk')
mentor = Mentor.new('Orange Apple')

mentor.subscribe_to_student student
mentor.subscribtions

hw = student.create_homework(hw_title: 'Hw_01', hw_solution: '12345')

student.submit_homework

mentor.read_notifications!(student, hw)

mentor.check_homework(hw)
