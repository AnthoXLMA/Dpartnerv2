class AddColumnToProfiles < ActiveRecord::Migration[7.1]
  def change
    add_column :profiles, :gender, :string
    add_column :profiles, :birthday, :date
  end
end
