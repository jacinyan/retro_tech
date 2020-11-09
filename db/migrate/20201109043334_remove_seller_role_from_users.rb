class RemoveSellerRoleFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :seller_role, default: false
  end
end
