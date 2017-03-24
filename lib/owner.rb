require 'pry'

class Owner

  attr_reader :species
  attr_accessor :name, :mood, :owner, :pets

  ALL = []

  ######bottom two lines is if we put methods in concerns/persistable.rb
  #include Persistable::InstanceMethods
  #extend Persistable::ClassMethods #extend says define this as a class method

  def initialize(species)
    #super() #parentheses are indicating super is being called with no argument
    @species = species
    #@owner = owner
    #@name = name
    #@mood = mood
    @pets = {fishes: [], dogs: [], cats: []}
    # @pets = {:fishes => [], :dogs => [], :cats => []}
    ALL << self #keeps track of the owners (species?) that have been created
  end #end method

######################
  ###class methods

  def self.all
    ALL
  end

  def self.count
    ALL.length
  end

  def self.reset_all
    ALL.clear
  end


######################
  ###instance methods

  def say_species
    puts "I am a #{species}." #so i can see it.
    "I am a #{species}."
  end #end method


  # def pets
  #   @pets = {:fishes => [], :dogs => [], :cats => []}
  # end


  #expect(owner.pets[:fishes][0].name).to eq("Bubbles")
  def buy_fish(fish)
    fish = Fish.new(fish)
    pets[:fishes] << fish
  end

  def buy_cat(cat)
    cat = Cat.new(cat)
    pets[:cats] << cat
  end

  def buy_dog(dog)
    dog = Dog.new(dog)
    pets[:dogs] << dog
    #binding.pry
  end

  ###get the above three working, then abstract them:

  # def buy_pet(pet)
  #   pet = Pet.new(pet)
  #   @pets[:"#{pet}s"] = [pet] ##fish/fishes!! not like dogs or cats
  # end

  def walk_dogs
    #binding.pry
    self.pets[:dogs][0].mood = "happy" #[0] means just first dog
  end

  def play_with_cats
    self.pets[:cats][0].mood = "happy" #[0] means just first cat
  end

  def feed_fish
    #binding.pry
    self.pets[:fishes][0].mood = "happy" #[0] means just first fish
  end

  # def feed_pet
  #   self.pets[:species][0].mood = "happy"
  # end

  def sell_pets
    #binding.pry
    #mood = self.pets.values[0][0].mood = "nervous"
    pets.each do |species, pet_array|
      #self.pets.reset_all
      pet_array.each do |pet_object|
        #binding.pry
        pet_object.mood = "nervous"

      # self.pets[:dogs][0].mood = "nervous"
      # self.pets[:cats][0].mood = "nervous"
      # self.pets[:fishes][0].mood = "nervous"
    end
    end #end loop
    self.pets.clear
  end

  def list_pets
    "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end

end #end class
