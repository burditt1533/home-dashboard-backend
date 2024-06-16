class CreateSongs < ActiveRecord::Migration[7.1]
  def change
    create_table :songs do |t|
      t.string :name
      t.string :artist
      t.string :url
      t.integer :tempo
      t.jsonb :lyrics

      t.timestamps
    end
  end
end
