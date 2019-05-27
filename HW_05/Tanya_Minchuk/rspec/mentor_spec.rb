require 'rspec'
require_relative '../mentor'
require_relative '../student'
require_relative '../hw'

RSpec.describe Mentor do
  before(:each) do
    @mentor = Mentor.new('Orange Apple')
  end

  it 'Mentor s name' do
    expect(@mentor.name).to eq 'Orange Apple'
  end

  it 'Add subscribtions' do
    student = Student.new('James Bond')
    @mentor.subscribe_to_student(student)
    expect(@mentor.subscribtions).to eq ['James Bond', []]
  end

  it 'Check_homework' do
    hw = Homework.new(hw_title: 'Hw_01', hw_solution: '')
    expect(@mentor.check_homework(hw)).to eq 'Failed'
  end

  it 'Check_homework' do
    hw = Homework.new(hw_title: 'Hw_01', hw_solution: '12345')
    expect(@mentor.check_homework(hw)).to eq 'Succeeded'
  end

  it 'Read notification' do
    student = Student.new('James Bond')
    hw = student.create_homework(hw_title: 'Hw_01', hw_solution: '12345')
    student.submit_homework
    @mentor.read_notifications!(student, hw)
    expect(student.notifications).to eq ['Read : Student James Bond sent Hw_01']
  end
end
