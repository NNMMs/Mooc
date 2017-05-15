class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  	
  	has_many :courses
	has_many :lectures
	has_many :comments, dependent: :destroy

	validates :name, uniqueness: true, presence: true, length: { minimum: 3 }
	validates :email, uniqueness: true
	validates :password,confirmation: true, length: { minimum: 6 }
	validates :password_confirmation, presence: true

	
	Gender_Types = ["Male", "Female"]
	
	mount_uploader :image, ImageUploader
end
