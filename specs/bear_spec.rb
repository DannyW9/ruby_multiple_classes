require('minitest/autorun')
require('minitest/rg')
require_relative('../bear.rb')
require_relative('../fish.rb')
require_relative('../river.rb')


class BearTest < MiniTest::Test

  def setup
    @bear1 = Bear.new("Yogi", "Grizzly")
    @fish1 = Fish.new("Dave")
    @river1 = River.new("Amazon", [@fish1])
  end

  def test_can_find_bear_name
    assert_equal("Yogi", @bear1.name)
  end

  def test_can_find_bear_type
    assert_equal("Grizzly", @bear1.type)
  end

  def test_bear_stomach_is_empty
    assert_equal(0, @bear1.food_count)
  end

  def test_bear_can_eat
    @bear1.eat_food(@fish1)
    assert_equal(1, @bear1.food_count)
  end

  def test_bear_can_roar
    assert_equal("ROAR!", @bear1.roar)
  end

  def test_bear_can_take_fish_from_river
    @river1.add_fish(@fish1)
    @bear1.take_fish(@fish1, @river1)
    assert_equal(1, @bear1.food_count)
    assert_equal(0, @river1.fish_count)
  end

end
