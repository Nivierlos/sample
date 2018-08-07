class Course < ApplicationRecord
	belongs_to :department
	belongs_to :level
	
	 validates :module_code, presence: true
	 validates :module_name, presence: true
	 validates :department_id, presence: true
	 validates :level_id, presence: true

end
