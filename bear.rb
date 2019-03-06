class Bear

  attr_reader :name, :type, :stomach

  def initialize(name, type, stomach)
    @name = name
    @type = type
    @stomach = []
  end

  def eats_fish(fish)
    @stomach << fish
  end
end
