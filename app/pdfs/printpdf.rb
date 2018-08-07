class ResultPdfss < Prawn::Document
	def initialize(result)
		super(top_margin:70)
		@result = result
		reg_number
		line_items
		text 'Marks be here'
		
	end
	def reg_number
		text 'Marks for: {@result.student.reg_number}',size:30, style: :bold
	end
	def line_items
		move_down 20
		table line_item_rows
	end
	def line_items_rows
		[['Module Code','Module Name', 'Level', 'Department', 'Marks']]+
		@result.line_items.map do |item|
			[result.course.module_code, result.course.module_name, result.level.level, result.department.name, result.marks_value]
end 