class TodoList

  attr_reader :title, :items

  def initialize(list_title)
  
    @title = list_title
    @items = Array.new # Starts empty! No Items yet!
	
  end
  
  def update_title(name)
    @title = name
  end
  
  def add_item(new_item)
  
    if new_item.is_a? String
      item = Item.new(new_item)
      @items.push(item)
	elsif new_item.is_a? Array
      new_item.each do |single_item|
        item = Item.new(single_item)
        @items.push(item)
	  end
	end
	
  end
  
  def remove_item(order_number)
  
    if (order_number <= @items.length and order_number >= 0)
      @items.delete_at(order_number - 1)
	end  
	
  end
  
  def print
  
    title_string = ">>>   #{@title}   <<<"
	puts print_hr(title_string.length)
	puts title_string
	puts print_hr(title_string.length)
	puts
    @items.each(&:to_s)
	
  end
  
  def update_item(order_number, options={})

    if (order_number <= @items.length and order_number >= 0)
	
      default_options = {
	    :description => @items[order_number - 1].description,
	    :done => @items[order_number - 1].completed_status
      }
	  
      options = default_options.merge(options) {|key, oldval, newval| newval ? newval : oldval}
	  
      @items[order_number - 1].description = options[:description]
      @items[order_number - 1].completed_status = options[:done]
	  
	  @items[order_number - 1]
	  
	end 
	
  end
  
  def move_item(order_number, new_order_number)
    if (order_number <= @items.length and order_number >= 0 and new_order_number <= @items.length and new_order_number >= 0)
      @items.insert(new_order_number - 1, @items.delete_at(order_number - 1))
	end
  end
  
  def all_done?
    
    !@items.any?{|item| item.completed_status == false}
	
  end
  
  def print_hr(length = 20)
    puts "=" * length
  end
  
end

class Item

  attr_accessor :description, :completed_status

  # Initialize item with a description and marked as
  # not complete
  def initialize(item_description)
  
    @description = item_description
    @completed_status = false
	
  end
  
  def to_s
  
    print_hr ("Description: ".length + @description.length)
    puts "Description: #{@description}"
	if (@completed_status)
	  puts "Status: done"
    else
	  puts "Status: not done yet"
	end
	puts
	
  end
  
  def print_hr(length = 20)
    puts "=" * length
  end
  
end