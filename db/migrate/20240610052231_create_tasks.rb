class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.integer :level
      t.boolean :is_complete
      t.references :room
      t.timestamps
    end
  end
end
