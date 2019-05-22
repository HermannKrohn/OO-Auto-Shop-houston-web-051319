class Mechanic

  attr_reader :name, :specialty

  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
  end

  def self.all
    @@all
  end

  def service
    Car.all.select do |car|
      car.mechanic == self
    end
  end

  def car_owners
    self.service.map do |car|
      car.owner 
    end
  end

  def car_owner_names
    names = []
    self.car_owners.each do |owner|
      names << owner.name
    end
    names
  end

end
