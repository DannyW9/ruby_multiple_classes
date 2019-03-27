class Bear

  attr_reader :name, :type

def initialize(name, type)
  @name = name
  @type = type
  @stomach = []
end

def roar
  return "ROAR!"
end

def food_count
  @stomach.length()
end

def eat_food(fish)
  @stomach.push(fish)
end

def take_fish(fish, river)
  # fish = river.find_by_name(name)
  river.lose_fish(fish)
  eat_food(fish)
end




end
