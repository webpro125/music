class AddColumnsListeners < ActiveRecord::Migration[5.0]
  def change
    add_column :listeners, :profile_name, :string
    add_column :listeners, :city, :string
    add_column :professionals, :profile_name, :string
    add_column :professionals, :city, :string
  end
end
