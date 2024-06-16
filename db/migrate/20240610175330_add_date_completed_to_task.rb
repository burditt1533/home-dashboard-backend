class AddDateCompletedToTask < ActiveRecord::Migration[7.1]
  def change
    add_column :tasks, :date_completed, :datetime
  end
end
