require('minitest/autorun')
require('minitest/rg')
require_relative('../river')
require_relative('../fish')

class RiverTest < MiniTest::Test

  def setup
    @river = River.new("Amazon")
    @fish_1 = Fish.new("Trout")
    @fish_2 = Fish.new("Carp")
  end

  def test_river_is_created
    assert_equal(River, @river.class())
  end

  def test_river_has_name
    assert_equal("Amazon", @river.name)
  end

  def test_river_can_hold_fish
    assert_equal([], @river.contents)
  end

  def test_add_fish_to_river
    @river.add_fish(@fish_1)
    @river.add_fish(@fish_2)
    assert_equal([@fish_1, @fish_2], @river.contents)
  end

  def test_remove_content_from_river
    @river.add_fish(@fish_1)
    @river.add_fish(@fish_2)
    @river.remove_fish
    assert_equal([@fish_1], @river.contents)
  end

  def test_remove_content_from_river__no_fish

    assert_equal("No fish to remove!", @river.remove_fish)
  end

  def test_river_contents
    assert_equal(0, @river.contents.count)
  end

end
