class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :events, dependent: :destroy

  has_many :job_listings, through: :events, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings, dependent: :destroy

  validates :role, inclusion: { in: ["candidate", "employer"]}

  mount_uploader :photo, PhotoUploader
  # before_validation :strip_email
  # validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  # validates :first_name, :last_name, :email, :address, presence: true
  # validates :zip_code, :province, :country, :position, presence: true

  # if role == "employer"
  # validates :company_name, :vat_number, :land_phone, presence: true
  # else
  # validates :experience, :language, presence: true
  # end
 private

  def strip_email
    self.email = email.strip unless email.nil?
  end

end



