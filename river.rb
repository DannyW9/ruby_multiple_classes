class River

  attr_reader :name

def initialize(name, fish)
  @name = name
  @fish = fish
end

def fish_count()
  @fish.length()
end

def find_by_name(name)
  for fish in @fish
    if fish.name == name
      return fish
    end
  end
  return nil
end

def lose_fish(fish)
  @fish.delete(fish)
end

def add_fish(fish)
  @fish.push(fish)
end


end
