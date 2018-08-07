class Result < ApplicationRecord
	belongs_to :student
	belongs_to :department
	belongs_to :level
	belongs_to :course

	validates :student_id, presence: true
	validates :department_id, presence: true
	validates :course_id, presence: true
	validates :marks_value, presence: true
	validates :level_id, presence: true
	validates :category, presence: true
end
