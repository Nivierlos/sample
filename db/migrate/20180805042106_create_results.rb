class CreateResults < ActiveRecord::Migration[5.1]
  def change
    create_table :results do |t|
      t.integer :student_id
      t.integer :course_id
      t.integer :marks_value
      t.integer :department_id
      t.integer :level_id
      t.string :category

      t.timestamps
    end
  end
end
