class CreateJoinTableDancesProfiles < ActiveRecord::Migration[7.1]
  def change
    create_join_table :dances, :profiles do |t|
      # t.index [:dance_id, :profile_id]
      # t.index [:profile_id, :dance_id]
    end
  end
end
