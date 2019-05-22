class Bear

attr_accessor(:name, :type, :stomach_contents)

  def initialize(name, type)
    @name = name
    @type = type
    @stomach_contents = []
  end

  def catch_fish(river)
    fish = river.bye_fish
    @stomach_contents << fish
  end

  def roar
    return "Roar!"
  end


end
