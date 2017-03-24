module Persistable

  module ClassMethods

    def all
      self::ALL
    end #end method

    def count
      self.all.length
    end

    def reset_all
      #ALL.clear ###this doesn't work... below does
      self.all.clear
    end #end method
  end #end module

  module InstanceMethods

    def initialize
      self.class.all << self
    end
  end #end module

  def species
    species = species
    mood = 'nervous'
  end #end method

  def say_species
    puts "#{species}"
  end #end method

  def name
    @name = name
    puts "My name is #{name}!"
  end #end method

  def pets(name, species, mood)
  end #end method

  def buy_fish
  end

  def buy_cat
  end

  def buy_dog
  end

  def walk_dogs
  end

  def play_with_cats
  end

  def feed_fish
  end

  def sell_pets
  end

  def list_pets(pets)
    puts "#{pets}"
  end

end #end module
