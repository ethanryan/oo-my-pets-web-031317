class Pet

  attr_reader :owner, :name
  attr_accessor :mood

  DEFAULT_MOOD = 'nervous'

  def initialize(name)
    @name = name
    @mood = DEFAULT_MOOD
  end #end method

end
