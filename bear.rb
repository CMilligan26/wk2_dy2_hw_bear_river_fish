class Bear

  attr_reader :name, :type, :fish_stored, :stomach

  def initialize(name, type)
    @name = name
    @type = type
    @fish_stored = []
    @stomach = []
  end

  def remove_fish_from_river(river)
    return "No fish to remove!" if river.contents.empty? == true
    @fish_stored << river.contents.last
    river.remove_fish
  end

  def eat_fish
    return "No fish stored to eat!" if @fish_stored.empty? == true
    @fish_stored << @stomach.last
  end

  def roar
    "ROAR!!!"
  end

end
