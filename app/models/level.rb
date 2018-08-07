class Level < ApplicationRecord
	belongs_to :department

	validates :level, presence: true
	validates :department_id, presence: true
end
