class Car
  attr_accessor :name, :make, :model, :color, :speed

  def initialize(name, make, model, color)
    #instance variable starts with @
    @name = name
    @make = make
    @model = model
    @color = color
    @speed = 0
  end

  def accelerate(number)
    @speed += number
    p "#{@name} is cruuisssiinnn USA at #{@speed} MPH"
  end

  def crash
    @speed = 0
    p "#{@name} was in a crash!"
  end


  # def color
  #   @color
  # end

  # def color=(color)
  #   @color = color
  # end
end

my_car = Car.new("Bob", "Toyota", "Prius", "red")
p my_car.name
p my_car.make
p my_car.model
p my_car.color

my_car.color = "pink"

p my_car

davids_car = Car.new("Billy","Pontiac","Grand-Am","Blue")
p davids_car
davids_car.accelerate(200)
p davids_car

my_car.crash
p my_car
