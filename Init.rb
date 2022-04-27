require_relative 'classes/to_do_list'

list = ToDoList.new(['walk dog', 'nap', 'laundry', 'mow yard'])

puts
puts "First: " + list.first
puts
puts "Longest: " + list.find {|item| item.length > 6 }
puts
puts "Original list:"
puts list.map {|item| "> #{item.capitalize}" }
puts
list << ("sweep")
puts
puts "Updated list:"
puts list.map {|item| "> #{item.capitalize}" }

puts
puts "Sorted:"
list.sort.each_with_index do |item, i|
puts "#{i+1}: #{item}"
end
puts
puts
puts "Alphabetical Order:"
puts list.sort {|a, b| a <=>b }
