require("minitest/autorun")
require("minitest/rg")
require_relative("../bear")
require_relative("../river")
require_relative("../fish")

class BandTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("Jacky")

  end

  def test_fish_name()
    assert_equal("Jacky", @fish1.name())
  end

end
