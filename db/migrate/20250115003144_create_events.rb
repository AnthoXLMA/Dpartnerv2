class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.datetime :start_time
      t.string :location
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
