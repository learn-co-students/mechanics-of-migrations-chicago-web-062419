class CreateArtists < ActiveRecord::Migration 
    # def up #do/run
    # end
    # def down #undo/rollback
    # end
    def change
        # added the create_table method and passed the name of the table we want to create as a symbol
        create_table :artists do |t| 
            t.string :name
            t.string :genre
            t.integer :age
            t.string :hometown
        end
    end
    # The change method is the primary way of writing migrations. It works for the majority of cases, where Active Record knows how to reverse the migration automatically
end
# create our table using SQL:
sql = <<-SQL
  CREATE TABLE IF NOT EXISTS artists (
  id INTEGER PRIMARY KEY,
  name TEXT,
  genre TEXT,
  age INTEGER,
  hometown TEXT
  )
SQL
 
ActiveRecord::Base.connection.execute(sql)