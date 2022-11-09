class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.references :project, foreign_key: true
      t.references :user, foreign_key: true
      t.string :title

      t.timestamps
    end
  end
end
