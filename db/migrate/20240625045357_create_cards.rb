class CreateCards < ActiveRecord::Migration[7.1]
  def change
    create_table :cards do |t|
      t.string :guess_action
      t.jsonb :forbidden_words
      t.string :descriptive_hint
      t.integer :times_played
      t.boolean :is_explicit

      t.timestamps
    end
  end
end
