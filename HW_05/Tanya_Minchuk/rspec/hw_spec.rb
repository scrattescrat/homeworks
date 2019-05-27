require 'rspec'
require_relative '../hw'

RSpec.describe Homework do
  subject do
    Homework.new(hw_title: 'Hw_01', hw_solution: '12345')
  end

  it {
    is_expected.to have_attributes(hw_title: 'Hw_01', hw_solution: '12345')
  }
end
