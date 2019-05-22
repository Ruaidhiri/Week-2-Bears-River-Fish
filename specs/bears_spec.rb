require("minitest/autorun")
require("minitest/rg")
require_relative("../bears")
require_relative("../river")
require_relative("../fish")

class BearsTest < MiniTest::Test

  def setup
    @Baloo = Bear.new("Baloo", "Sloth Bear")
    @fish = Fish.new("South Asian Carp")
    @river = River.new("Wainganga", [@fish, @fish, @fish])

  end

  def test_name
    assert_equal("Baloo", @Baloo.name)
  end

  def test_type
    assert_equal("Sloth Bear", @Baloo.type)
  end

  def test_stomach_contents
    assert_equal(0, @Baloo.stomach_contents.length)
  end

  def test_catch_fish__one_goes_into_tummy
    @Baloo.catch_fish(@river)
    assert_equal(1, @Baloo.stomach_contents.length)
  end

  def test_catch_fish__from_the_river
    @Baloo.catch_fish(@river)
    assert_equal(1, @Baloo.stomach_contents.length)
    assert_equal(2, @river.fish_population.length)
  end

  def test_roar
    assert_equal("Roar!", @Baloo.roar)
  end

end
