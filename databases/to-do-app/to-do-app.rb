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


db.execute(create_table_cmd)

def add(item)
  db.execute("INSERT INTO to-do-app (item, complete) VALUES (?, \"false\")", [item])
  puts "#{item} has been added to your to-do list"
end