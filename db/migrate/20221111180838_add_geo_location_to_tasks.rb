class AddGeoLocationToTasks < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :task_lonlat, :st_point, geographic: true
  end
end
