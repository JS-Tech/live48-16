class RemoveField2 < ActiveRecord::Migration
  def change
    remove_column :events, :name
    add_column :events, :etype, :string
  end
end
