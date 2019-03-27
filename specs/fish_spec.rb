require('minitest/autorun')
require('minitest/rg')
require_relative('../fish.rb')

class FishTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("Dave")
  end

  def test_can_find_fish_name
    assert_equal("Dave", @fish1.name)
  end

end
