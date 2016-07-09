class TodoList

  attr_reader :title, :items

  def initialize(list_title)
    @title = list_title
    @items = Array.new # Starts empty! No Items yet!
  end
end

class Item
    # methods and stuff go here
end
