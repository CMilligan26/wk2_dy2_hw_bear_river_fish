require('minitest/autorun')
require('minitest/rg')
require_relative('../fish')

class FishTest < MiniTest::Test

  def setup
    @fish = Fish.new("Trout")
  end

  def test_fish_is_created
    assert_equal(Fish, @fish.class())
  end

  def test_fish_has_name
    assert_equal("Trout", @fish.name)
  end

end
