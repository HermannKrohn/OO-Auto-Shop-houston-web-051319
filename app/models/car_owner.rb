class Owner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select do |car|
      car.owner == self
    end
  end

  def mechanics
    self.cars.map do |car|
      car.mechanic
    end
  end 

  def self.average_cars
    Car.all.length/Owner.all.length.to_f
  end
end
