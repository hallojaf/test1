class Car
  def self.method_missing(*args)
    p args

    if args[0] =~ /create_by_/
      puts "found a factory method!"
      attrs = args[0].to_s.gsub('create_by_','').split('_and_')
      p attrs
      # maybe here i'll make a car with these attributes!
    else
      super
    end
  end
end

p Car.create_by_brand_and_engine_size brand: "bmw", engine: "450cc"
p Car.create_by_wheels_and_driver wheels: 4, driver: "shadi"
p Car.drive



###########################

class Clown

  def method_missing(meth_name, *args)
    p meth_name
    p args
    puts "weeee"
  end

end

homey = Clown.new

p homey.class.ancestors

[:play, :run, :jump].each do |method|
  homey.send(method, "waa?")
end

# homey.play "waaa", {}, [1,3,3]
