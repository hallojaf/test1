module Abiding

  module People

    class Dude
      def speak
        "white russian"
      end
    end

  end

  module  Dogs
    class Dude
      def speak
        "woof"
      end
    end
  end

end


class Dude
  def speak
    "hi mom"
  end
end


# namespace
p Abiding::People::Dude.new.speak
p Abiding::Dogs::Dude.new.speak
p Dude.new.speak




#################################################################


module Abiding
  def speak
    "hi"
  end
end

class Dude
  include Abiding
end

class Dudette
  include Abiding  # this is called "mixing in the module"
end

class Dud; end

a = Dude.new
b = Dudette.new
c = Dud.new

[a,b,c].map{|person| puts person.speak}


#################################################################
# note below we're "extending" the class instead of "including" the module
# which, using the SAME module, adds class methods instead of instance methods

module Abiding
  def speak
    "hi"
  end
end

class Dude
  extend Abiding
end

class Dudette
  extend Abiding  # this is called "mixing in the module"
end

class Dud; end

a = Dude
b = Dudette
c = Dud

[a,b,c].map{|klass| puts klass.speak}


