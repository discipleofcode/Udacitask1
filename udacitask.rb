require_relative 'todolist.rb'

# Creates a new todo list
list = TodoList.new("List for testing purposes")
# Add four new items
list.add_item(["first_item", "second item", "third item", "fourth item"])
# Print the list
list.print
# Delete the first item
list.remove_item(1)
# Print the list
list.print
# Delete the second item
### removing second item for current array, if we wanted to remove second item from initial array
### we could use list.remove_item(1)
list.remove_item(2)
# Print the list
list.print
# Update the completion status of the first item to complete
list.update_item(1, :done => true)
# Print the list
list.print
# Update the title of the list
list.update_title("Seems everything is working good")
# Print the list
list.print