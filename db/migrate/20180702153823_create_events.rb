class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.text :description
      t.datetime :start_date
      t.datetime :end_date
      t.text :venue
      t.text :venue_detail
      t.string :address
      t.string :zip_code
      t.string :province
      t.string :country

      t.timestamps
    end
  end
end
