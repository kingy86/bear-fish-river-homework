require("minitest/autorun")
require("minitest/rg")
require_relative("../bear")
require_relative("../river")
require_relative("../fish")

class BandTest < MiniTest::Test

  def setup
    @river = River.new("Amazon", [])
    @fish2 = Fish.new("Goldie")
    @fish3 = Fish.new("Scales")
    @fish4 = Fish.new("Fin")
  end

  def test_river_name()
    assert_equal("Amazon", @river.name())
  end

  def test_add_fish_to_river()
    @river.add_fish_to_river(@fish2, @fish3, @fish4)
    assert_equal(3, @river.fish.length)
  end

  def test_eaten_fish()
    @river.add_fish_to_river(@fish2, @fish3, @fish4)
    @river.eaten_fish()
    assert_equal(2, @river.fish.length)
  end

  # def test_drop_off_passenger()
  # @bus.drop_off(@passenger1)
  # assert_equal(1, @bus.passenger_count())
  # end

end
