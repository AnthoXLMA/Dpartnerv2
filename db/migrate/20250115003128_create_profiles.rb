class CreateProfiles < ActiveRecord::Migration[7.1]
  def change
    create_table :profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.integer :age
      t.string :dance_style
      t.text :bio

      t.timestamps
    end
  end
end
