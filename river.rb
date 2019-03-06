class River

  attr_reader :name, :fish

  def initialize(name, fish)
    @name = name
    @fish = []
  end

  def add_fish_to_river(fish1, fish2, fish3)
    @fish.push(fish1, fish2, fish3)
  end

  def eaten_fish()
    # index = @fish.index(fish)
    return @fish.pop()
    # return @fish.length
  end
  #  def drop_off(person)
  #   index = @passengers.index(person)
  #   @passengers.slice!(index, 1)
  #   end



end
