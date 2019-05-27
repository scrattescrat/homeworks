require 'rspec'
require_relative '../student'
require_relative '../hw'

RSpec.describe Student do
  before(:each) do
    @student = Student.new('Jam Bod')
  end

  it 'Student s name' do
    expect(@student.name).to eq 'Jam Bod'
  end

  it 'Submit homework' do
    @student.create_homework(hw_title: 'Hw_01', hw_solution: '12345')
    @student.submit_homework
    expect(@student.notifications).to eq ['Unread : Student Jam Bod sent Hw_01']
  end
end
