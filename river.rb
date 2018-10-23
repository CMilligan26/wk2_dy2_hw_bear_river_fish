class River

attr_reader :name, :contents

def initialize(name)
  @name = name
  @contents = []
end

def add_fish(fish_to_add)
  @contents << fish_to_add
end

def remove_fish
  return "No fish to remove!" if @contents.empty? == true
  @contents.pop
end

end
