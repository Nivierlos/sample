class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :module_code
      t.string :module_name
      t.integer :department_id
      t.integer :level_id

      t.timestamps
    end
  end
end
