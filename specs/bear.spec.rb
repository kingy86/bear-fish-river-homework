require("minitest/autorun")
require("minitest/rg")
require_relative("../bear")
require_relative("../river")
require_relative("../fish")

class BandTest < MiniTest::Test

  def setup()
    @bear = Bear.new("Yogi", "Brown", nil)
  end

  def test_bear_name()
    assert_equal("Yogi", @bear.name())
  end

  def test_bear_type()
    assert_equal("Brown", @bear.type())
  end

  def test_bear_empty_stomach()
    assert_equal(0, @bear.stomach.length)
  end

  def test_eats_fish()
    @bear.eats_fish(@fish)
    assert_equal(1, @bear.stomach.length)
  end


end
