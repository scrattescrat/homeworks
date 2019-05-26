# class Mentor
class Mentor
  attr_reader :name, :subscribtions
  attr_writer :name, :subscribtions

  def initialize(name)
    @name          = name
    @subscribtions = []
    @result        = ''
  end

  def subscribe_to_student(student)
    @subscribtions << student.name
    @subscribtions << student.notifications
  end

  def check_homework(homework)
    if homework.hw_solution.empty?
      p @result = 'Failed'
    else
      p @result = 'Succeeded'
    end
  end

  def read_notifications!(student, homework)
    student.notifications.map! do |_note|
      _note = "Read : Student #{student.name} sent #{homework.hw_title}"
    end
  end
end
