class AddRoleToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :role, :string
    add_column :job_listings, :dress_code, :text
  end
end
