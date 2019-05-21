class River


attr_accessor(:name, :fish_population)

  def initialize(name, fish_population)
    @name = name
    @fish_population = fish_population
  end

  def bye_fish
    @fish_population.pop
  end

end
