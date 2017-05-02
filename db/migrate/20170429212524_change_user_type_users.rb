class ChangeUserTypeUsers < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :user_type, :string, index: true
  end
end
