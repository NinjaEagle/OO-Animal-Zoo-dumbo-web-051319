require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here

zoo_a = Zoo.new("ZooA","NYC")
zoo_b = Zoo.new("ZooB","NJ")
lion = Animal.new("Cat",20,"liona", zoo_a)
tiger = Animal.new("Cat",20,"Fred",zoo_b)

binding.pry
puts "done"
