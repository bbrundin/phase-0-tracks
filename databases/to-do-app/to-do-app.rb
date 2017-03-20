# TO DO LIST APP

# require gems
require 'sqlite3'
require 'faker'

#  SQLite3 database
DB = SQLite3::Database.new("to-do-app.db")
DB.results_as_hash = true


# table
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS to-do-app(
    id INTEGER PRIMARY KEY,
    item VARCHAR(255),
    complete BOOLEAN
  )
SQL


DB.execute(create_table_cmd)

def add(item)
  DB.execute("INSERT INTO to-do-app (item, complete) VALUES (?, \"false\")", [item])
  puts "#{item} has been added"
end

def display_list
  puts DB.execute("SELECT * FROM to-do-app")
end


#Driver Code

puts "Create the ultimate To-Do List with To-Do App(tm)"

loop do
  puts "enter 1 to add"
  puts "enter 2 to see your list"
  puts "type exit to exit"

  input = gets.chomp.downcase
  case input
  when "1"
    puts "Enter to-do item"
    item = gets.chomp
    add(item)

  when "2"
    display_list
  when "exit"
    puts "Thank you for using To-Do App(tm)"
    break
  else
    puts "Error, please try a different command"
  end
end



