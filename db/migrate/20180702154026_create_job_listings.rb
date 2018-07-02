class CreateJobListings < ActiveRecord::Migration[5.2]
  def change
    create_table :job_listings do |t|
      t.references :event, foreign_key: true
      t.string :title
      t.string :category
      t.text :description
      t.text :requirement
      t.text :schedule_detail
      t.integer :salary
      t.datetime :start_date
      t.datetime :end_date
      t.string :gender
      t.string :currency

      t.timestamps
    end
  end
end
