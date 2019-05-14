# Class Homework
class Homework
  attr_accessor :hw_title, :hw_solution

  def initialize(options = {})
    @hw_title     = options[:hw_title]
    @hw_solution  = options[:hw_solution]
  end
end
