class Car
  COLORS = [:red, :black, :blue]
  attr_reader :brand, :color
  def initialize brand, color
    @brand = brand
    @color = color
  end

  # all methods enclosed within class << self are now class methods (singleton methods)
  class << self
    def create_from_params params
      self.new params[:brand], params[:color]
    end
  end

  # you can also create a class method by using the self keyword in the method definition/.
  def self.available_colors
    COLORS
  end
end

bmw = Car.create_from_params :color => "red", :brand => "bmw"
puts bmw.brand
puts bmw.color
puts Car.available_colors

##############################################################################################################################

# we can add a method to a specific instance, which wouldn't exist for any other instances
def bmw.do_something_else
  puts "hi mom"
end

bmw.do_something_else

################################################################################################################################

# singleton pattern
class Play
  def get_instance
    @inst ||= self.new
  end

  private
  def initialize(args)

  end
end


