class AddEndTimeToJobListings < ActiveRecord::Migration[5.2]
  def change
    add_column  :job_listings, :end_time, :datetime
  end
end
