class AddGoalLevelToRoom < ActiveRecord::Migration[7.1]
  def change
    add_column :rooms, :goal_level, :integer
  end
end
