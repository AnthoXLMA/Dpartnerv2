class AddDetailsToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :name, :string
    add_column :users, :age, :integer
    add_column :users, :dance_style, :string
    add_column :users, :bio, :text
    add_column :users, :location, :string
  end
end
