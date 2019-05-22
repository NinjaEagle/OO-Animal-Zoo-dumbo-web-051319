class Animal
  attr_accessor :species, :nickname, :zoo
  attr_writer :weight

  @@all = []

  def initialize(species, weight, nickname)
    @species = species
    @weight = weight
    @nickname = nickname
    @@all << self
  end

  def self.all
    @@all
  end

  def species
    self.species
  end

  def location
    self.zoo.location
  end

  def self.find_by_species
    animals = @@all.map do|animal|
      if animal.species == special
        animal
      end
    end
  end
end
