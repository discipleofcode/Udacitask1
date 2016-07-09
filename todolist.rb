class TodoList

  attr_reader :title, :items

  def initialize(list_title)
    @title = list_title
    @items = Array.new # Starts empty! No Items yet!
  end
end

class Item

  attr_reader :description, :completed_status

  # Initialize item with a description and marked as
  # not complete
  def initialize(item_description)
    @description = item_description
    @completed_status = false
  end
  
end