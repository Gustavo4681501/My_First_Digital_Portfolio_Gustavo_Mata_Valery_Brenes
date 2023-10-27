class RemoveUserIdFromSocialLinks < ActiveRecord::Migration[7.0]
  def change
    remove_column :social_links, :user_id, :integer
  end
end
