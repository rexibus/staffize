class AddFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :company_name, :string
    add_column :users, :title, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :address, :string
    add_column :users, :zip_code, :string
    add_column :users, :province, :string
    add_column :users, :country, :string
    add_column :users, :vat_number, :string
    add_column :users, :land_phone, :string
    add_column :users, :mobile_phone, :string
    add_column :users, :gender, :string
    add_column :users, :ssn, :string
    add_column :users, :position, :string
    add_column :users, :date_of_birth, :datetime
    add_column :users, :experience, :text
    add_column :users, :language, :string
  end
end
