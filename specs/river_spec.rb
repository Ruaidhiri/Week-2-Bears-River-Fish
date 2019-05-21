require("minitest/autorun")
require("minitest/rg")
require_relative("../river")
require_relative("../fish")

class RiverTest < MiniTest::Test

  def setup
    @fish = Fish.new("South Asian Carp")
    @river = River.new("Wainganga", [@fish])
  end

  def test_name
    assert_equal("Wainganga", @river.name)
  end

  def test_number_of_fish
    assert_equal(1, @river.fish_population.length)
  end

  def test_bye_fish
    @river.bye_fish
    assert_equal(0, @river.fish_population.length)
  end

end
