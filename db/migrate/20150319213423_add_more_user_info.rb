class AddMoreUserInfo < ActiveRecord::Migration
  def change
    add_column :users, :bio, :string
    add_column :users, :camera_type, :string
    add_column :users, :sea_creature, :string
  end
end
