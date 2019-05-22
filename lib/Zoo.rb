class Zoo
  attr_accessor :name, :location

  @@all = []

  def initialize(name,location)
    @name = name
    @location = location
    @@all << self
  end

  def self.all
    @@all
  end

  def animal
    animal_location = []
    Animal.all.select do |animal|
      animal.zoo == self
      animal_location << self
    end
    animal_location
  end

  def animal_species
    ary = self.animal
    ary.map do |animal|
      animal.species
      # animal_species << self
    end.uniq
  end

  def find_by_species(species)
    animals.select do |animal|
      animal.species == species
  end

  def animal_nicknames
    animals.map do |animal|
      animal.nickname
  end

  def self.find_by_location(location)
    Zoo.all.select do |area|
      area.location == location
    end
  end

end
