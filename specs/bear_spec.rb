require('minitest/autorun')
require('minitest/rg')
require_relative('../bear')
require_relative('../river')
require_relative('../fish')

class RiverTest < MiniTest::Test

  def setup
    @bear = Bear.new("Yogi", "Grizzly")
    @river = River.new("Amazon")
    @fish_1 = Fish.new("Trout")
    @fish_2 = Fish.new("Carp")
    @river.add_fish(@fish_1)
    @river.add_fish(@fish_2)
  end

  def test_bear_is_created
    assert_equal(Bear, @bear.class())
  end

  def test_bear_has_name
    assert_equal("Yogi", @bear.name)
  end

  def test_bear_has_type
    assert_equal("Grizzly", @bear.type)
  end

  def test_bear_has_stomach
    assert_equal([], @bear.stomach)
  end

  def test_bear_take_fish_from_river
    @bear.remove_fish_from_river(@river)
    assert_equal([@fish_2], @bear.fish_stored)
    assert_equal([@fish_1], @river.contents)
  end

  def test_bear_take_fish_from_river__no_fish
    river_2 = River.new("Amazon")
    assert_equal("No fish to remove!", @bear.remove_fish_from_river(river_2))
  end

  def test_bear_eat_a_stored_fish
    @bear.remove_fish_from_river(@river)
    @bear.remove_fish_from_river(@river)
    @bear.eat_fish
    assert_equal([@fish_1], @bear.fish_stored)
  end

  def test_bear_eat_a_stored_fish
    assert_equal("No fish stored to eat!", @bear.eat_fish)
  end

  def test_bear_can_roar
    assert_equal("ROAR!!!", @bear.roar)
  end

  def test_bear_count_stomach_contents
    assert_equal(0, @bear.stomach.count)
  end

end
