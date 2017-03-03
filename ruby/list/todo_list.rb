class TodoList
  def get_items
    @list
  end

  def initialize(chores)
    @list = chores
  end

  def add_item(items)
    @list = @list.push(items)
  end

  def delete_item(items)
    @list.delete(items)
  end

  def get_item(index)
    @list[index]
   end
end













