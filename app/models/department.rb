class Department < ApplicationRecord
	has_many :students
	has_many :modules
	has_many :levels
	has_many :results

	validates :name, presence: true
end
