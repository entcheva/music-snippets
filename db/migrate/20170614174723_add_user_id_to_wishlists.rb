class AddUserIdToWishlists < ActiveRecord::Migration[5.0]
  def change
    add_column :wishlists, :user_id, :integer
  end
end
