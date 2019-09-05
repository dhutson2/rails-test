class AddFieldsToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :dueby, :date
  end
end
