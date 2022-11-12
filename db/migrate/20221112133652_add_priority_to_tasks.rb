class AddPriorityToTasks < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :priority, :integer, default: 0
    add_index :tasks, :priority
  end
end
