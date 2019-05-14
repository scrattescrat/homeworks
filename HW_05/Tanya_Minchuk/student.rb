require 'net/http'
require 'uri'
require 'json'

# class Student
class Student
  attr_reader :name, :notifications
  attr_writer :name, :notifications

  def initialize(name)
    @name          = name
    @notifications = []
  end

  def create_homework(options)
    @new_homework = Homework.new(options)
  end

  def submit_homework
    Net::HTTP.post URI('http://www.example.com/'),
                   @new_homework.to_json,
                   'Content-Type' => 'application/json'

    @notifications <<
      "Unread : Student #{name} sent #{@new_homework.hw_title}"
  end
end
