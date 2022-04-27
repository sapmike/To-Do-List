
class ToDoList
  attr_accessor :items

  include Enumerable

  def initialize(items=[])
    @items = items
  end

  def each
    @items.each {|item| yield(item)}
  end

  def <<(new_item)
    @items.unshift(new_item)
  end

end
