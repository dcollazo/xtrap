require 'xtrap'

class Xtrap::TestClass
  attr_accessor :name
  
  def initialize(args)
    @name = args[:name]
  end
  
  def return_name
    "#{name}"
  end
end
