# After creating "db" folder > "migrate" folder, link your class/table to ActiveRecord::Migration like below.
# CreateArtists now inherits any methods in ActiveRecord::Migration.

class CreateArtists < ActiveRecord::Migration[4.2]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :genre
      t.integer :age
      t.string :hometown
    end
  end
end