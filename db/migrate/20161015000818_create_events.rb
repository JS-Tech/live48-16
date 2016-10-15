class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :sdate
      t.string :type
      t.string :author
      t.string :info

      t.timestamps null: false
    end
  end
end
