class CreateJoinTableDancersDances < ActiveRecord::Migration[7.1]
  def change
    create_join_table :dancers, :dances do |t|
      t.index [:dancer_id, :dance_id]
      t.index [:dance_id, :dancer_id]
    end
  end
end
