class AddSongUrlToSongs < ActiveRecord::Migration[7.1]
  def change
    add_column :songs, :song_url, :string
    remove_column :songs, :integer
    remove_column :songs, :jsonb
    remove_column :songs, :url
  end
end
