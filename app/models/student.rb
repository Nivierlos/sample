class Student < ApplicationRecord
	belongs_to :department
	belongs_to :level

	#attachment :profile_image, type: :image

	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :reg_number, presence: true
	validates :email, presence: true
	validates :department_id, presence: true
	validates :level_id, presence: true

	mount_uploader :image, ImageUploader
end
