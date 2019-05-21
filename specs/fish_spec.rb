require("minitest/autorun")
require("minitest/rg")
require_relative("../fish")

class FishTest < MiniTest::Test

  def setup
    @fish = Fish.new("South Asian Carp")
  end

  def test_name
    assert_equal("South Asian Carp", @fish.name)
  end

end
