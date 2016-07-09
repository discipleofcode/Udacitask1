class TodoList

  attr_reader :title, :items

  def initialize(list_title)
    @title = list_title
    @items = Array.new # Starts empty! No Items yet!
  end
  
  def add_item(new_item)
    item = Item.new(new_item)
    @items.push(item)
  end
  
  def remove_item(order_number)
    if (order_number < @items.length and order_number >= 0)
      @items.delete_at(order_number - 1)
	end  
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