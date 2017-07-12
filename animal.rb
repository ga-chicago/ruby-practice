class Animal
  attr_accessor :name, :height, :weight, :sex, :age

  def initialize(name,height, weight, sex, age)
    @name = name
    @height = height
    @weight = weight
    @sex = sex
    @age = age
  end

  def eat
    p "I am eating"
  end

  def sleep
    p "I am sleeping"
  end

  def die
    p "RIP #{@name} has died"
  end
end

class Mammal < Animal
  attr_accessor :hair_color, :is_preggo

  def initialize(name, height, weight, sex, age, hair_color, is_preggo)
    super(name,height,weight,sex,age)
    @hair_color = hair_color
    @is_preggo = is_preggo
  end

  def give_birth
    if @is_preggo
      p "#{@name} is giving birth!"
    else
      p "#{@name} had an immaculate conception"
    end
  end
end

class Rhino < Mammal
  attr_accessor :horn_length

  def initialize(name, height, weight, sex, age, hair_color, is_preggo, horn_length)
    super(name, height, weight, sex, age, hair_color, is_preggo)
    @horn_length = horn_length
  end

  def charge
    p "#{@name} is charging!"
  end
end

class Bear < Mammal
  attr_accessor :likes_honey

  def initialize(name, height, weight, sex, age, hair_color, is_preggo, likes_honey)
    super(name, height, weight, sex, age, hair_color, is_preggo)
    @likes_honey = likes_honey
  end

  def hybernate
    p "#{@name} is hybernating"
  end
end

# my_mammal = Mammal.new("Conrad",2,10,nil,100,"Orange", false)
# p my_mammal
# my_mammal.hair_color
# my_mammal.give_birth
#
# my_rhino = Rhino.new("James", 5, 500, "male", 8, "gray", false, 2)
# p my_rhino

my_bear = Bear.new("Pooh", 5,6,"male",2, "yellow", false, true);
p my_bear
my_bear.eat
my_bear.give_birth
my_bear.hybernate
my_bear.die
