require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../fish.rb')

class RiverTest < MiniTest::Test

def setup

  @fish1 = Fish.new("Dave")
  @fish2 = Fish.new("Sarah")
  @fish3 = Fish.new("Bob")
  @fish = [@fish1, @fish2, @fish3]
  @river1 = River.new("Amazon", @fish)

end

def test_can_find_river_name
  assert_equal("Amazon", @river1.name)
end

def test_fish_count
  assert_equal(3, @river1.fish_count())
end

def test_find_fish_by_name
  fish = @river1.find_by_name("Sarah")
  assert_equal("Sarah", fish.name)
end


def test_lose_fish
  @river1.lose_fish(@fish1)
  assert_equal(2, @river1.fish_count())
end

end
