class AddColmnUsers < ActiveRecord::Migration[5.1]
  def change
  	add_column :users, :member, :string
  	add_column :users, :profile, :string
  	add_column :users, :region, :string
  end
end
