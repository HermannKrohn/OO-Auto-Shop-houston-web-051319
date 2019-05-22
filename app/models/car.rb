class Car

  attr_reader :make, :model, :classification, :owner, :mechanic

  @@all = []

  def initialize(owner, mechanic, make, model, classification)
    @owner = owner
    @mechanic = mechanic
    @make = make
    @model = model
    @classification = classification
    @@all << self
  end

  def self.all
    @@all 
  end

  def classifications
    Car.all.map do |car|
      car.classification
    end.uniq
  end

  def mechanics
    demandedSpecialty = self.classification
    Mechanic.all.select do |mechanic|
      mechanic.specialty == demandedSpecialty
    end
  end

end
