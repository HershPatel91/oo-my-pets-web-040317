require 'pry'
class Owner
  # code goes here
  attr_accessor :pets, :name
  @@all = []

  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
    @@all << self
  end

  def self.all
   @@all
 end

 def self.reset_all
   @@all.clear
 end

 def self.count
   @@all.count
 end

  def species
    @species
  end

  def say_species
    return "I am a #{@species.to_s}."
  end

  def pets
    @pets
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
    # binding.pry
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
    # binding.pry
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
    # binding.pry
  end

  def walk_dogs
    @pets[:dogs].each{|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each{|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each{|fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets.each do |type,pet|
      # binding.pry
      @pets[type].each do |pet|
          # binding.pry
          pet.mood = "nervous"
    end
    @pets[type] = []
  end
end

def list_pets
  "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
end

end
